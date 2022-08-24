-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbck_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbck_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110011001101", 1 => "110101011000", 2 => "110010111101", 
    3 => "101100011010", 4 => "000101101100", 5 => "110010000001", 
    6 => "000100100111", 7 => "000100111000", 8 => "010001010110", 
    9 => "110101010101", 10 => "001011111000", 11 => "000101100001", 
    12 => "110011010000", 13 => "110100110011", 14 => "110011011111", 
    15 => "110110010111", 16 => "001000101111", 17 => "010101010001", 
    18 => "001010010100", 19 => "111011111000", 20 => "110111001001", 
    21 => "000111010001", 22 => "111000100111", 23 => "001001010011", 
    24 => "110111001110", 25 => "110110011111", 26 => "000011111110", 
    27 => "001011000101", 28 => "000001110000", 29 => "011000111101", 
    30 => "001001011111", 31 => "001010100001", 32 => "110000010001", 
    33 => "111001101001", 34 => "111101011111", 35 => "101110110010", 
    36 => "000100001011", 37 => "101101100100", 38 => "101000101101", 
    39 => "110001100101", 40 => "000101010010", 41 => "101010110000", 
    42 => "000100001011", 43 => "001010100001", 44 => "111111011001", 
    45 => "111011100011", 46 => "010010111101", 47 => "000011010011", 
    48 => "111101011000", 49 => "110111110111", 50 => "101100010011", 
    51 => "000110111010" );

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

entity L2_wlo_218_L1_WEIbck is
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

architecture arch of L2_wlo_218_L1_WEIbck is
    component L2_wlo_218_L1_WEIbck_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbck_rom_U :  component L2_wlo_218_L1_WEIbck_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


