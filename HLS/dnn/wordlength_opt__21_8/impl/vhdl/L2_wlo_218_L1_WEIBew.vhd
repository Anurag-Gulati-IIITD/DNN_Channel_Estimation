-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIBew_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIBew_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111011001100", 1 => "1011011101010", 2 => "1111010100010", 
    3 => "0000110111001", 4 => "1111100000101", 5 => "0001011100010", 
    6 => "1111001101101", 7 => "1101110001011", 8 => "0001110111100", 
    9 => "1110011111111", 10 => "1110100100001", 11 => "1111111110011", 
    12 => "0000111001101", 13 => "0001100001011", 14 => "1111101010011", 
    15 => "0000011111110", 16 => "0000111101101", 17 => "0001001101110", 
    18 => "1111111110111", 19 => "0000100011000", 20 => "1110111000111", 
    21 => "0000100011001", 22 => "0001111100111", 23 => "0011110010000", 
    24 => "0000000101011", 25 => "1111011010110", 26 => "1111010001000", 
    27 => "0000000000000", 28 => "0001010010100", 29 => "1110010100000", 
    30 => "0000011011111", 31 => "1111100000011", 32 => "1111110111110", 
    33 => "1110011111011", 34 => "0001000010110", 35 => "1101001101011", 
    36 => "1110110010100", 37 => "0001010010001", 38 => "1111010001010", 
    39 => "0000011010001", 40 => "0001100011011", 41 => "0000000101001", 
    42 => "0000110000000", 43 => "1111011110101", 44 => "0001110011101", 
    45 => "1111000010000", 46 => "1111101000101", 47 => "1111101001110", 
    48 => "0010000110001", 49 => "1111011000001", 50 => "1110111110010", 
    51 => "1111000011010" );

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

entity L2_wlo_218_L1_WEIBew is
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

architecture arch of L2_wlo_218_L1_WEIBew is
    component L2_wlo_218_L1_WEIBew_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIBew_rom_U :  component L2_wlo_218_L1_WEIBew_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


