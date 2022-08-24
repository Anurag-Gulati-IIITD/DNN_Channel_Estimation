-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIwdI_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIwdI_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010111101", 1 => "000001111111", 2 => "001111000000", 
    3 => "000101001011", 4 => "101010010010", 5 => "010110001001", 
    6 => "111000110100", 7 => "101011100101", 8 => "110110011101", 
    9 => "010001010110", 10 => "001010001100", 11 => "111010011001", 
    12 => "111000101011", 13 => "000100011111", 14 => "000100011100", 
    15 => "111110101011", 16 => "111101011010", 17 => "110110111010", 
    18 => "000100100101", 19 => "000001100010", 20 => "111011000111", 
    21 => "111001001111", 22 => "010010110001", 23 => "000001001111", 
    24 => "000101010001", 25 => "111100111011", 26 => "001101000111", 
    27 => "011000001001", 28 => "111110110011", 29 => "100010001001", 
    30 => "001100101110", 31 => "000010100100", 32 => "000111101101", 
    33 => "111010001011", 34 => "111000110110", 35 => "000001011010", 
    36 => "000111100010", 37 => "101100110000", 38 => "101000111000", 
    39 => "001000010110", 40 => "111010001110", 41 => "010000010000", 
    42 => "110011111000", 43 => "110101100011", 44 => "111011101101", 
    45 => "111010110011", 46 => "111000110010", 47 => "111101000101", 
    48 => "111111111100", 49 => "111110001000", 50 => "001011010011", 
    51 => "111101000101" );

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

entity L2_wlo_218_L1_WEIwdI is
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

architecture arch of L2_wlo_218_L1_WEIwdI is
    component L2_wlo_218_L1_WEIwdI_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIwdI_rom_U :  component L2_wlo_218_L1_WEIwdI_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


