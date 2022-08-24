-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbEo_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbEo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100110100110", 1 => "0010000111110111", 2 => "0010000000101010", 
    3 => "0011000000001001", 4 => "1010111110011000", 5 => "0010111100100001", 
    6 => "1010110101011110", 7 => "1001100000011011", 8 => "0010110000010101", 
    9 => "0010001101010110", 10 => "1010110110001101", 11 => "1010101100010000", 
    12 => "1010100110010100", 13 => "1010011101111101", 14 => "0010110101110111", 
    15 => "1010011001101011", 16 => "1010100100011101", 17 => "0001110110010011", 
    18 => "1010101001010011", 19 => "0010101010111001", 20 => "0010010000001100", 
    21 => "1010111100111110", 22 => "0010100101000000", 23 => "0010100110011100", 
    24 => "0010110000000011", 25 => "1010110100011001", 26 => "0010100000011000", 
    27 => "0010101110111011", 28 => "1010110111000010", 29 => "0001111010101110", 
    30 => "1010110101000011", 31 => "0010111111111110", 32 => "0010110001100111", 
    33 => "0010110011100101", 34 => "1011001010010100", 35 => "0011000101000000", 
    36 => "0010110110101101", 37 => "0010100010001100", 38 => "1011000001010111", 
    39 => "1010011101100000", 40 => "0010010010100010", 41 => "0011000011010011", 
    42 => "0010101010111010", 43 => "0011000101101100", 44 => "1010001110000001", 
    45 => "0010000011011100", 46 => "0010010001001001", 47 => "0010011101011011", 
    48 => "0010000010100111", 49 => "0011001011010110", 50 => "1010100000111001", 
    51 => "0010111011001011" );

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

entity L2_wlo_L1_WEIGHTSbEo is
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

architecture arch of L2_wlo_L1_WEIGHTSbEo is
    component L2_wlo_L1_WEIGHTSbEo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbEo_rom_U :  component L2_wlo_L1_WEIGHTSbEo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


