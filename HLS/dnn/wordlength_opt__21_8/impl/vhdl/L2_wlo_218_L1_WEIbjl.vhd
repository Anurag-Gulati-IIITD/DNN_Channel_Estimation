-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbjl_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbjl_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010011010", 1 => "110010101010", 2 => "001111011001", 
    3 => "110101001000", 4 => "111111000010", 5 => "011010100000", 
    6 => "001011011000", 7 => "110111110111", 8 => "001011000011", 
    9 => "000011011110", 10 => "001011111101", 11 => "000101001110", 
    12 => "111100100111", 13 => "010001110000", 14 => "110101111001", 
    15 => "110101010111", 16 => "111110011010", 17 => "110011110110", 
    18 => "111110001011", 19 => "001001011110", 20 => "000010101000", 
    21 => "111101000100", 22 => "000110101000", 23 => "001000010101", 
    24 => "000011100110", 25 => "001001001101", 26 => "010011110001", 
    27 => "001110100100", 28 => "111110011010", 29 => "100101011010", 
    30 => "000001110001", 31 => "110110111111", 32 => "000110001100", 
    33 => "111111000000", 34 => "000110100101", 35 => "001000001101", 
    36 => "111111101011", 37 => "101111010011", 38 => "110000111101", 
    39 => "111111001000", 40 => "110111110000", 41 => "000001011000", 
    42 => "111100111001", 43 => "010001111100", 44 => "110100110111", 
    45 => "110100001100", 46 => "001101011111", 47 => "111001101001", 
    48 => "110111110010", 49 => "101000101110", 50 => "110100111111", 
    51 => "000110111110" );

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

entity L2_wlo_218_L1_WEIbjl is
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

architecture arch of L2_wlo_218_L1_WEIbjl is
    component L2_wlo_218_L1_WEIbjl_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbjl_rom_U :  component L2_wlo_218_L1_WEIbjl_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


