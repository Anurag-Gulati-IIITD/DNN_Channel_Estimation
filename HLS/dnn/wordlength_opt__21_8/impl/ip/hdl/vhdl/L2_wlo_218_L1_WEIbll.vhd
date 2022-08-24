-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbll_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbll_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010011001", 1 => "010000010010", 2 => "001000101111", 
    3 => "010100010101", 4 => "110010100111", 5 => "010100110100", 
    6 => "111101011110", 7 => "110101100100", 8 => "100010001110", 
    9 => "010101011000", 10 => "111011011011", 11 => "000010010111", 
    12 => "111010001111", 13 => "000011100111", 14 => "111001100011", 
    15 => "001100000010", 16 => "000001001000", 17 => "000011001010", 
    18 => "111001011100", 19 => "101101100010", 20 => "110110111001", 
    21 => "110110101111", 22 => "001101010111", 23 => "111011001010", 
    24 => "110111111100", 25 => "000000110110", 26 => "001101110101", 
    27 => "110111000011", 28 => "110110011101", 29 => "110100001001", 
    30 => "000011011010", 31 => "001001001100", 32 => "010001001111", 
    33 => "001000101001", 34 => "111001011011", 35 => "111011111010", 
    36 => "000111011111", 37 => "000010100100", 38 => "001001111100", 
    39 => "101101011000", 40 => "000011101010", 41 => "001001110001", 
    42 => "110000110110", 43 => "111001001110", 44 => "111010011101", 
    45 => "001010011011", 46 => "110100000011", 47 => "000000001000", 
    48 => "110000100000", 49 => "001101000000", 50 => "001011101110", 
    51 => "001001111110" );

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

entity L2_wlo_218_L1_WEIbll is
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

architecture arch of L2_wlo_218_L1_WEIbll is
    component L2_wlo_218_L1_WEIbll_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbll_rom_U :  component L2_wlo_218_L1_WEIbll_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


