-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIZio_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIZio_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111100001001", 1 => "0001110001000", 2 => "0001000000101", 
    3 => "0001001110110", 4 => "1011111000101", 5 => "1111000110000", 
    6 => "1110010111111", 7 => "1110000000101", 8 => "0010011100000", 
    9 => "1101101100011", 10 => "1110001001011", 11 => "0000011100110", 
    12 => "1111010011101", 13 => "1110111111111", 14 => "1110010110000", 
    15 => "1111001110011", 16 => "1111000000100", 17 => "1111101010000", 
    18 => "0000110011000", 19 => "0000000010011", 20 => "0001000100111", 
    21 => "1111100111001", 22 => "0000010100000", 23 => "1111000001001", 
    24 => "1111001111011", 25 => "1111110001000", 26 => "1101101100010", 
    27 => "1111110110110", 28 => "1110101010110", 29 => "1111101100011", 
    30 => "0001011000011", 31 => "0000011111111", 32 => "0010001111100", 
    33 => "0001110001100", 34 => "1111010110001", 35 => "0001110100001", 
    36 => "0000011100000", 37 => "0001001011011", 38 => "0000100100010", 
    39 => "1110110000101", 40 => "0000111111010", 41 => "0010110000100", 
    42 => "0010100000001", 43 => "1111110100010", 44 => "0000000001111", 
    45 => "0000011111100", 46 => "1110000111100", 47 => "0000001110100", 
    48 => "1111010000101", 49 => "1111111011111", 50 => "1111010100010", 
    51 => "0001000000000" );

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

entity L2_wlo_218_L1_WEIZio is
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

architecture arch of L2_wlo_218_L1_WEIZio is
    component L2_wlo_218_L1_WEIZio_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIZio_rom_U :  component L2_wlo_218_L1_WEIZio_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


