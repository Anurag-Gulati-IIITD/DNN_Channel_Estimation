-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIwdI_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIwdI_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010111", 1 => "000001111", 2 => "001111000", 3 => "000101001", 
    4 => "101010010", 5 => "010110001", 6 => "111000110", 7 => "101011100", 
    8 => "110110011", 9 => "010001010", 10 => "001010001", 11 => "111010011", 
    12 => "111000101", 13 to 14=> "000100011", 15 => "111110101", 16 => "111101011", 
    17 => "110110111", 18 => "000100100", 19 => "000001100", 20 => "111011000", 
    21 => "111001001", 22 => "010010110", 23 => "000001001", 24 => "000101010", 
    25 => "111100111", 26 => "001101000", 27 => "011000001", 28 => "111110110", 
    29 => "100010001", 30 => "001100101", 31 => "000010100", 32 => "000111101", 
    33 => "111010001", 34 => "111000110", 35 => "000001011", 36 => "000111100", 
    37 => "101100110", 38 => "101000111", 39 => "001000010", 40 => "111010001", 
    41 => "010000010", 42 => "110011111", 43 => "110101100", 44 => "111011101", 
    45 => "111010110", 46 => "111000110", 47 => "111101000", 48 => "111111111", 
    49 => "111110001", 50 => "001011010", 51 => "111101000" );

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

entity L2_wlo_166_L1_WEIwdI is
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

architecture arch of L2_wlo_166_L1_WEIwdI is
    component L2_wlo_166_L1_WEIwdI_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIwdI_rom_U :  component L2_wlo_166_L1_WEIwdI_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


