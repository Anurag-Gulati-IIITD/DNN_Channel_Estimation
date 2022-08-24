-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbbk_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbbk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000001111000", 1 => "101110111111", 2 => "110010100011", 
    3 => "111100011111", 4 => "111110100011", 5 => "101100101000", 
    6 => "000000000010", 7 => "000010110101", 8 => "001011100110", 
    9 => "001000110100", 10 => "000110101110", 11 => "101100011111", 
    12 => "111011010010", 13 => "111101111100", 14 => "111010111101", 
    15 => "101101100010", 16 => "111100110111", 17 => "011011110111", 
    18 => "000111010001", 19 => "111000011111", 20 => "000000010001", 
    21 => "001011000001", 22 => "110000110010", 23 => "010111101000", 
    24 => "110101100001", 25 => "000001111110", 26 => "000101011100", 
    27 => "001001011011", 28 => "000010100000", 29 => "011001101010", 
    30 => "000001001111", 31 => "000011101001", 32 => "000000010000", 
    33 => "111110010000", 34 => "001001100010", 35 => "101101110011", 
    36 => "111111101000", 37 => "000000110010", 38 => "111101110111", 
    39 => "110101000100", 40 => "001100010100", 41 => "111101011111", 
    42 => "110110001011", 43 => "001111101000", 44 => "111100010111", 
    45 => "111110100100", 46 => "000101110000", 47 => "000100000101", 
    48 => "110010101101", 49 => "000010100010", 50 => "110101100101", 
    51 => "001110110001" );

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

entity L2_wlo_218_L1_WEIbbk is
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

architecture arch of L2_wlo_218_L1_WEIbbk is
    component L2_wlo_218_L1_WEIbbk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbbk_rom_U :  component L2_wlo_218_L1_WEIbbk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


