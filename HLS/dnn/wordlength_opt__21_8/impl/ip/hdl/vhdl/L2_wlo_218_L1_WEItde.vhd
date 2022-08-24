-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEItde_rom is 
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


architecture rtl of L2_wlo_218_L1_WEItde_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111001000001", 1 => "110000111011", 2 => "000001001101", 
    3 => "110100110100", 4 => "010101111011", 5 => "101100010110", 
    6 => "000000101000", 7 => "010001111111", 8 => "010100001110", 
    9 => "110011011101", 10 => "000110010010", 11 => "000011100010", 
    12 => "001110110100", 13 => "111000111100", 14 => "001101100101", 
    15 => "110111100101", 16 => "000010010110", 17 => "001100100100", 
    18 => "110101101011", 19 => "000111101111", 20 => "001010010011", 
    21 => "111110111001", 22 => "101001011101", 23 => "001111110101", 
    24 => "111100011100", 25 => "111100011111", 26 => "101100000001", 
    27 => "110100111110", 28 => "000010001101", 29 => "001011000101", 
    30 => "000100000101", 31 => "111101101101", 32 => "101100111011", 
    33 => "000000100000", 34 => "000110000111", 35 => "000111110101", 
    36 => "000001000110", 37 => "000001110000", 38 => "111110000111", 
    39 => "001010010000", 40 => "111111001101", 41 => "110110100011", 
    42 => "010000011001", 43 => "000110010001", 44 => "110101111100", 
    45 => "110011100100", 46 => "001111001110", 47 => "111000011010", 
    48 => "000110011010", 49 => "111000000011", 50 => "101110110011", 
    51 => "110000000111" );

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

entity L2_wlo_218_L1_WEItde is
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

architecture arch of L2_wlo_218_L1_WEItde is
    component L2_wlo_218_L1_WEItde_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEItde_rom_U :  component L2_wlo_218_L1_WEItde_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


