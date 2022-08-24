-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIrcU_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIrcU_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001001100101", 1 => "001110010101", 2 => "111010011011", 
    3 => "010101010010", 4 => "111101001101", 5 => "111011100011", 
    6 => "101110100100", 7 => "000110111110", 8 => "100010100100", 
    9 => "110101010101", 10 => "101100111100", 11 => "101111100011", 
    12 => "111100001000", 13 => "001001010111", 14 => "000101000000", 
    15 => "001001101000", 16 => "111001100000", 17 => "001001101110", 
    18 => "000100011011", 19 => "000010101000", 20 => "110101000011", 
    21 => "000010001111", 22 => "000100011000", 23 => "110010110110", 
    24 => "110110001010", 25 => "000110110100", 26 => "100011101111", 
    27 => "101001011001", 28 => "000100000101", 29 => "010000111100", 
    30 => "110011111110", 31 => "000110111010", 32 => "000010100111", 
    33 => "111000011011", 34 => "101111100001", 35 => "111001100110", 
    36 => "000110101111", 37 => "011000011110", 38 => "000110100010", 
    39 => "111110110001", 40 => "000110000000", 41 => "111101010010", 
    42 => "111100111011", 43 => "110001001110", 44 => "000110001001", 
    45 => "000010011101", 46 => "110001111001", 47 => "000110101010", 
    48 => "000100110011", 49 => "001011001111", 50 => "010001011110", 
    51 => "111110111100" );

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

entity L2_wlo_218_L1_WEIrcU is
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

architecture arch of L2_wlo_218_L1_WEIrcU is
    component L2_wlo_218_L1_WEIrcU_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIrcU_rom_U :  component L2_wlo_218_L1_WEIrcU_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


