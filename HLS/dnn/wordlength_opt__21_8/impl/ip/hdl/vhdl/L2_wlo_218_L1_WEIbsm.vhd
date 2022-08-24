-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbsm_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbsm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111100000110", 1 => "001100011001", 2 => "000001100011", 
    3 => "000101101111", 4 => "111000101111", 5 => "110101110000", 
    6 => "101101110100", 7 => "000110110111", 8 => "101001010001", 
    9 => "000101110001", 10 => "011010010001", 11 => "111000100001", 
    12 => "000011010110", 13 => "110000001110", 14 => "000011110011", 
    15 => "110111111111", 16 => "111000111011", 17 => "111011000101", 
    18 => "000000011100", 19 => "000000111010", 20 => "000000010000", 
    21 => "111011101101", 22 => "000100111010", 23 => "100110010101", 
    24 => "000100101100", 25 => "111010010000", 26 => "101111001011", 
    27 => "001010000111", 28 => "110001111100", 29 => "001010111101", 
    30 => "111110001011", 31 => "001000111010", 32 => "111101110011", 
    33 => "111000101100", 34 => "100111011000", 35 => "001111010011", 
    36 => "111111000111", 37 => "110010001110", 38 => "110000101110", 
    39 => "001001011100", 40 => "111000001100", 41 => "000110001111", 
    42 => "110011100010", 43 => "000011011111", 44 => "001100000001", 
    45 => "001101011100", 46 => "101111010110", 47 => "111111010111", 
    48 => "101110110011", 49 => "010111001011", 50 => "011011010111", 
    51 => "111101110001" );

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

entity L2_wlo_218_L1_WEIbsm is
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

architecture arch of L2_wlo_218_L1_WEIbsm is
    component L2_wlo_218_L1_WEIbsm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbsm_rom_U :  component L2_wlo_218_L1_WEIbsm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


