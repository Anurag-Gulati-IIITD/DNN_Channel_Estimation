-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIocq_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIocq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110111111101", 1 => "110011010101", 2 => "111000011110", 
    3 => "110101001011", 4 => "000000000100", 5 => "111100110001", 
    6 => "000110111101", 7 => "111110100100", 8 => "010101011110", 
    9 => "000100001101", 10 => "001110000011", 11 => "000000110001", 
    12 => "111001101011", 13 => "000010000101", 14 => "101101110011", 
    15 => "000110001001", 16 => "000010111001", 17 => "001000010010", 
    18 => "111110010010", 19 => "000001001110", 20 => "111010100001", 
    21 => "111000100001", 22 => "000011001111", 23 => "001010011111", 
    24 => "111000101001", 25 => "111010000100", 26 => "010011101000", 
    27 => "010111100011", 28 => "001110001001", 29 => "001100001101", 
    30 => "010000111100", 31 => "001001010100", 32 => "111110010011", 
    33 => "111011110001", 34 => "000011111001", 35 => "101011000110", 
    36 => "000010111001", 37 => "111010011010", 38 => "110001111001", 
    39 => "111111111011", 40 => "000001010010", 41 => "111001101011", 
    42 => "110111111000", 43 => "001100001010", 44 => "111011011110", 
    45 => "001110001110", 46 => "010011111001", 47 => "111010010011", 
    48 => "111001111010", 49 => "110101111100", 50 => "110011101101", 
    51 => "000111011001" );

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

entity L2_wlo_218_L1_WEIocq is
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

architecture arch of L2_wlo_218_L1_WEIocq is
    component L2_wlo_218_L1_WEIocq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIocq_rom_U :  component L2_wlo_218_L1_WEIocq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


