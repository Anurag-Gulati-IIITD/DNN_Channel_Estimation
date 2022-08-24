-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbKp_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbKp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000111001100", 1 => "1111110101010", 2 => "1110010011001", 
    3 => "1111101011101", 4 => "0001001000011", 5 => "1101110001010", 
    6 => "0000000010011", 7 => "1111110100101", 8 => "1110001100101", 
    9 => "0001101110111", 10 => "0000110111001", 11 => "0001111111010", 
    12 => "0000000110111", 13 => "0000111111000", 14 => "0001011101110", 
    15 => "0000110010001", 16 => "0000110100111", 17 => "0000000001010", 
    18 => "1111010000110", 19 => "0000110111011", 20 => "0001000111101", 
    21 => "0000010000101", 22 => "1110100011111", 23 => "0001101000010", 
    24 => "0000000100111", 25 => "0000011110100", 26 => "1101101110111", 
    27 => "1111101001001", 28 => "0000011010011", 29 => "0001010111111", 
    30 => "1111011010011", 31 => "0000000101110", 32 => "0000100101000", 
    33 => "1100111111010", 34 => "0000101010111", 35 => "1011001111100", 
    36 => "1110000110100", 37 => "1101001110110", 38 => "0000100101100", 
    39 => "1110010110110", 40 => "0000101011011", 41 => "1110001110111", 
    42 => "0000001110011", 43 => "1110111110110", 44 => "0000101011000", 
    45 => "1111100000101", 46 => "1111011000000", 47 => "0001110010100", 
    48 => "1111100110100", 49 => "1111001000110", 50 => "0000100010010", 
    51 => "0000111110101" );

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

entity L2_wlo_218_L1_WEIbKp is
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

architecture arch of L2_wlo_218_L1_WEIbKp is
    component L2_wlo_218_L1_WEIbKp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbKp_rom_U :  component L2_wlo_218_L1_WEIbKp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


