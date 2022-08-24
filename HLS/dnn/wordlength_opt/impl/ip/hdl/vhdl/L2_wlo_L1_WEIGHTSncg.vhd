-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSncg_rom is 
    generic(
             DWIDTH     : integer := 16; 
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


architecture rtl of L2_wlo_L1_WEIGHTSncg_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010101000011001", 1 => "0011001010101000", 2 => "0010110000110011", 
    3 => "0010110011010100", 4 => "1010111101110001", 5 => "0011000000101010", 
    6 => "1010010011010100", 7 => "1010110010101111", 8 => "1011001001011100", 
    9 => "0011000000110001", 10 => "0010111101010011", 11 => "1010100110001111", 
    12 => "1011000000101010", 13 => "1010010001110001", 14 => "0010011000001011", 
    15 => "0010100111110010", 16 => "1010011011011100", 17 => "1010111100011001", 
    18 => "0010011101100111", 19 => "1010110100101110", 20 => "1010100110010000", 
    21 => "1010110100001111", 22 => "1010010001110000", 23 => "1011001000101010", 
    24 => "0010010010101101", 25 => "1010101101010110", 26 => "0010111000010110", 
    27 => "0010111001010101", 28 => "1011000011100010", 29 => "1011000001010110", 
    30 => "1010110100000010", 31 => "0011000011010101", 32 => "0011000000100001", 
    33 => "0010110111010011", 34 => "1010110000011010", 35 => "0010100011110111", 
    36 => "0001110010111111", 37 => "1010110101101100", 38 => "1010101000110111", 
    39 => "1010111111100001", 40 => "0010001000011110", 41 => "0011001000011101", 
    42 => "1011001010101001", 43 => "1001110111101110", 44 => "0010001010011101", 
    45 => "0011000000100000", 46 => "1010110000011001", 47 => "0010001101100110", 
    48 => "1010110100111001", 49 => "0010100101001010", 50 => "0011000011100000", 
    51 => "0011000010011000" );

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

entity L2_wlo_L1_WEIGHTSncg is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_L1_WEIGHTSncg is
    component L2_wlo_L1_WEIGHTSncg_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSncg_rom_U :  component L2_wlo_L1_WEIGHTSncg_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


