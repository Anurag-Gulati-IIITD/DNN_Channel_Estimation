-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbxn_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbxn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000011110010", 1 => "110011100010", 2 => "101110010010", 
    3 => "111110001010", 4 => "000010001001", 5 => "100100110100", 
    6 => "110000111110", 7 => "110111111111", 8 => "101000100111", 
    9 => "110010001100", 10 => "000101001010", 11 => "110011101010", 
    12 => "110110110000", 13 => "101000000111", 14 => "000100011100", 
    15 => "000010001100", 16 => "000110000011", 17 => "001011100001", 
    18 => "111110100000", 19 => "110110010011", 20 => "110111111111", 
    21 => "000111011000", 22 => "000111100110", 23 => "000000110111", 
    24 => "110011100100", 25 => "000010110100", 26 => "000000000110", 
    27 => "011001001000", 28 => "111010100001", 29 => "011010011101", 
    30 => "110111001100", 31 => "000001000011", 32 => "111011001100", 
    33 => "000101110100", 34 => "110101101000", 35 => "110011001100", 
    36 => "111011101001", 37 => "000010111111", 38 => "100001111000", 
    39 => "000111010101", 40 => "001110000011", 41 => "000111001111", 
    42 => "010110001011", 43 => "000010001111", 44 => "111011101110", 
    45 => "001000011001", 46 => "001000011110", 47 => "001111111000", 
    48 => "111011001111", 49 => "010001100110", 50 => "010110010111", 
    51 => "110110100101" );

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

entity L2_wlo_218_L1_WEIbxn is
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

architecture arch of L2_wlo_218_L1_WEIbxn is
    component L2_wlo_218_L1_WEIbxn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbxn_rom_U :  component L2_wlo_218_L1_WEIbxn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


