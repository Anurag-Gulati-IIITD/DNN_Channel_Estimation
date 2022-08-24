-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbMq_rom is 
    generic(
             DWIDTH     : integer := 13; 
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


architecture rtl of L2_wlo_218_L1_WEIbMq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001001101001", 1 => "0001101110110", 2 => "0000100011101", 
    3 => "1110110000110", 4 => "1110110000010", 5 => "0001011010010", 
    6 => "1111111000011", 7 => "1110010001011", 8 => "1111000100011", 
    9 => "1101000000000", 10 => "0001001101111", 11 => "1111111110011", 
    12 => "0000111100111", 13 => "0010011010110", 14 => "1011111010101", 
    15 => "1111001111001", 16 => "0000010001011", 17 => "1110101010101", 
    18 => "1111010110011", 19 => "0001100101011", 20 => "0000101000110", 
    21 => "1111100000101", 22 => "0001011011000", 23 => "1101110100110", 
    24 => "0000101011011", 25 => "1111001111100", 26 => "1100101011110", 
    27 => "1111011101101", 28 => "0000101101100", 29 => "1110111111111", 
    30 => "0011011000011", 31 => "0001001000000", 32 => "1111111001111", 
    33 => "1110101011101", 34 => "0001111001101", 35 => "0000011010010", 
    36 => "0000001110101", 37 => "1111100001000", 38 => "1111111101011", 
    39 => "1110101011110", 40 => "1111101110010", 41 => "0001011101110", 
    42 => "0010010011011", 43 => "0000100101111", 44 => "0001100011100", 
    45 => "0001010110110", 46 => "0000000001111", 47 => "1111000111101", 
    48 => "1111101110110", 49 => "1101101000110", 50 => "0001010110111", 
    51 => "1111010000001" );

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

entity L2_wlo_218_L1_WEIbMq is
    generic (
        DataWidth : INTEGER := 13;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIbMq is
    component L2_wlo_218_L1_WEIbMq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbMq_rom_U :  component L2_wlo_218_L1_WEIbMq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


