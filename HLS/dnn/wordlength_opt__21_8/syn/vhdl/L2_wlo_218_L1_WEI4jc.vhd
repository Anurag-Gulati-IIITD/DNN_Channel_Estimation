-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEI4jc_rom is 
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


architecture rtl of L2_wlo_218_L1_WEI4jc_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111110110111", 1 => "0001100111100", 2 => "1111010010011", 
    3 => "0000110100110", 4 => "1111011000111", 5 => "0000110010110", 
    6 => "0001011111100", 7 => "1111011101011", 8 => "1111000101101", 
    9 => "1110110101111", 10 => "1110110011001", 11 => "1011101100000", 
    12 => "0001000110110", 13 => "1111110000111", 14 => "1100100000001", 
    15 => "0010000110100", 16 => "1110111011101", 17 => "0000111000001", 
    18 => "1111100010010", 19 => "1101111000000", 20 => "1111011000010", 
    21 => "0000101111110", 22 => "0000011110100", 23 => "1111100111000", 
    24 => "1111110000001", 25 => "0000100000001", 26 => "0011011010100", 
    27 => "0000110111111", 28 => "1110010000011", 29 => "1101001111110", 
    30 => "0011100100110", 31 => "1110101010101", 32 => "1110111001011", 
    33 => "0010011011110", 34 => "0000011000010", 35 => "0001010011010", 
    36 => "0000100111010", 37 => "0000001100100", 38 => "1111000111110", 
    39 => "0001010001001", 40 => "1111101010010", 41 => "0000101011000", 
    42 => "0000101100001", 43 => "1101001000011", 44 => "1110101111110", 
    45 => "1110111111111", 46 => "0000111101111", 47 => "0000111000010", 
    48 => "1111111000011", 49 => "1101010001111", 50 => "0000101100010", 
    51 => "1110011110110" );

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

entity L2_wlo_218_L1_WEI4jc is
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

architecture arch of L2_wlo_218_L1_WEI4jc is
    component L2_wlo_218_L1_WEI4jc_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEI4jc_rom_U :  component L2_wlo_218_L1_WEI4jc_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


