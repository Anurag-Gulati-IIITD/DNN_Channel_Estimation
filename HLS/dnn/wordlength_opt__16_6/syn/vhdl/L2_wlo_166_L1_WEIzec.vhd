-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIzec_rom is 
    generic(
             DWIDTH     : integer := 9; 
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


architecture rtl of L2_wlo_166_L1_WEIzec_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000001101", 1 => "111111101", 2 => "111001000", 3 => "111011101", 
    4 => "001110111", 5 => "100111000", 6 => "001011111", 7 => "011010001", 
    8 => "000110100", 9 => "111000101", 10 => "101001000", 11 => "001001011", 
    12 => "111100111", 13 => "110010110", 14 => "000001100", 15 to 16=> "000001000", 
    17 => "001001111", 18 => "000000010", 19 => "110101110", 20 => "111110001", 
    21 => "001010010", 22 => "110000111", 23 => "110011001", 24 => "000000001", 
    25 => "111111110", 26 => "001111100", 27 => "110000111", 28 => "111111101", 
    29 => "010010101", 30 => "001000011", 31 => "000100100", 32 => "111011010", 
    33 => "001001010", 34 => "000001000", 35 => "110110001", 36 => "000000101", 
    37 => "011111010", 38 => "001110001", 39 => "000001001", 40 => "111111000", 
    41 => "110110000", 42 => "000011110", 43 => "111101010", 44 => "000101000", 
    45 => "111001011", 46 => "000001111", 47 => "111000111", 48 => "001001110", 
    49 => "111011111", 50 => "110101101", 51 => "111010001" );

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

entity L2_wlo_166_L1_WEIzec is
    generic (
        DataWidth : INTEGER := 9;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEIzec is
    component L2_wlo_166_L1_WEIzec_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIzec_rom_U :  component L2_wlo_166_L1_WEIzec_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


