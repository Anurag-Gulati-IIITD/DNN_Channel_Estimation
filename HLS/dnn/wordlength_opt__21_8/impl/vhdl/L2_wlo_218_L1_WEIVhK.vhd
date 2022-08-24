-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIVhK_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIVhK_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111011110111", 1 => "000001100101", 2 => "110010000101", 
    3 => "110001110110", 4 => "111101100111", 5 => "101001100011", 
    6 => "111011100100", 7 => "010010111110", 8 => "001011001001", 
    9 => "010000011111", 10 => "000000110011", 11 => "000010000000", 
    12 => "000000001010", 13 => "110001010101", 14 => "001100011011", 
    15 => "010010010111", 16 => "000111010111", 17 => "001010101010", 
    18 => "001011100100", 19 => "111111001111", 20 => "111100000110", 
    21 => "001000100110", 22 => "110010011110", 23 => "001010101111", 
    24 => "110110010111", 25 => "111111010101", 26 => "001001110101", 
    27 => "001101010111", 28 => "000111010000", 29 => "010011010111", 
    30 => "101011000110", 31 => "111010100010", 32 => "000010001100", 
    33 => "000000110000", 34 => "001001111100", 35 => "101011101010", 
    36 => "111010100110", 37 => "110001100001", 38 => "110111101100", 
    39 => "001000001100", 40 => "000011111011", 41 => "111000001000", 
    42 => "110010110100", 43 => "101110110001", 44 => "000101011111", 
    45 => "000111001100", 46 => "001010010010", 47 => "000010011001", 
    48 => "000011011001", 49 => "110101100110", 50 => "000111100000", 
    51 => "110111111011" );

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

entity L2_wlo_218_L1_WEIVhK is
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

architecture arch of L2_wlo_218_L1_WEIVhK is
    component L2_wlo_218_L1_WEIVhK_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIVhK_rom_U :  component L2_wlo_218_L1_WEIVhK_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


