-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSMgi_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSMgi_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100101111001", 1 => "1010110011001011", 2 => "1010101000001001", 
    3 => "1010011001111010", 4 => "0010111000011101", 5 => "1011000011010111", 
    6 => "1010001011011101", 7 => "0010110001110001", 8 => "1011000101111010", 
    9 => "0011000001111011", 10 => "0010110101000111", 11 => "0010101110011111", 
    12 => "0010011101100101", 13 => "1010001111001010", 14 => "0010010010100011", 
    15 => "0010101001000101", 16 => "0010111100110001", 17 => "0010110101010110", 
    18 => "0010110000010001", 19 => "0010110010011100", 20 => "1010000101110010", 
    21 => "1010010101000111", 22 => "1010111001111100", 23 => "1010100010001010", 
    24 => "0010011010100000", 25 => "1010110000000111", 26 => "1010101101010010", 
    27 => "1010111101100111", 28 => "0010110001001110", 29 => "0011000111110101", 
    30 => "1010011011101110", 31 => "1010010101100100", 32 => "1010110101001011", 
    33 => "1010110111110110", 34 => "0010110100101111", 35 => "1011000101001011", 
    36 => "1010111101001110", 37 => "1011000010101110", 38 => "0010010111000101", 
    39 => "1010000101010110", 40 => "0010001010110011", 41 => "1011000000000010", 
    42 => "1010111010101000", 43 => "1010110110100111", 44 => "0010101011011111", 
    45 => "0010011010010010", 46 => "0010010001011101", 47 => "0010110110011000", 
    48 => "1010011100010000", 49 => "1001111101001000", 50 => "0011000011000010", 
    51 => "0010010111010010" );

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

entity L2_wlo_L1_WEIGHTSMgi is
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

architecture arch of L2_wlo_L1_WEIGHTSMgi is
    component L2_wlo_L1_WEIGHTSMgi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSMgi_rom_U :  component L2_wlo_L1_WEIGHTSMgi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


