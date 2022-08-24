-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbNq_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbNq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000101000101", 1 => "000110101011", 2 => "001011111100", 
    3 => "000010010111", 4 => "110001010001", 5 => "010010101010", 
    6 => "001100000000", 7 => "110001100001", 8 => "001001101101", 
    9 => "101100110010", 10 => "111000011100", 11 => "110100010011", 
    12 => "000000011101", 13 => "110110110010", 14 => "101010011100", 
    15 => "101110100101", 16 => "111010101111", 17 => "110101011100", 
    18 => "111000010010", 19 => "000010011000", 20 => "000011111001", 
    21 => "000000010101", 22 => "001001111100", 23 => "110101110000", 
    24 => "001000100100", 25 => "000100101111", 26 => "110110101010", 
    27 => "111000101110", 28 => "111000111000", 29 => "101101011110", 
    30 => "001110100100", 31 => "000001010101", 32 => "000111111011", 
    33 => "111100001010", 34 => "000110100101", 35 => "011101101110", 
    36 => "111100100001", 37 => "000111000001", 38 => "111001101010", 
    39 => "111110100011", 40 => "111011011101", 41 => "011000101000", 
    42 => "011010010001", 43 => "010011010110", 44 => "111101110000", 
    45 => "111100100110", 46 => "110110100101", 47 => "111110010101", 
    48 => "111011100101", 49 => "111100010010", 50 => "111101110000", 
    51 => "000010110011" );

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

entity L2_wlo_218_L1_WEIbNq is
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

architecture arch of L2_wlo_218_L1_WEIbNq is
    component L2_wlo_218_L1_WEIbNq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbNq_rom_U :  component L2_wlo_218_L1_WEIbNq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


