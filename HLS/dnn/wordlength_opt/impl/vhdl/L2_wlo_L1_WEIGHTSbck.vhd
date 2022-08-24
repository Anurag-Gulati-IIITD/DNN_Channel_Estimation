-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbck_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbck_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010111011110000", 1 => "0010101110110011", 2 => "1010110000100011", 
    3 => "0010001111010101", 4 => "0010110110101100", 5 => "1011000111000100", 
    6 => "1010000110111000", 7 => "0010111001011100", 8 => "1010100110001000", 
    9 => "0010110111110101", 10 => "1011000000111100", 11 => "1010101110010111", 
    12 => "1010100111111100", 13 => "1011000010010110", 14 => "0010011001111010", 
    15 => "0010111101100101", 16 => "0010010001110100", 17 => "0011000101011011", 
    18 => "0010110010110011", 19 => "1010110111110111", 20 => "1010101101101001", 
    21 => "1010010011111001", 22 => "1011000011111001", 23 => "1010111100010011", 
    24 => "1010110000010101", 25 => "1010010100000001", 26 => "0010111111100110", 
    27 => "1011000100110011", 28 => "1010110110001110", 29 => "0011000111101000", 
    30 => "0010100001010001", 31 => "0010101110101100", 32 => "1010101000001010", 
    33 => "0011000011001101", 34 => "1010111100011110", 35 => "1010111010000111", 
    36 => "0010011111101001", 37 => "0011000001101011", 38 => "0011001000100110", 
    39 => "1010100000011011", 40 => "0010000101010001", 41 => "1010000000000010", 
    42 => "1010111010001110", 43 => "1010111000010111", 44 => "1010011011011101", 
    45 => "0010110001011000", 46 => "1010000111010110", 47 => "1010010111101111", 
    48 => "1010111100011111", 49 => "0010101111100010", 50 => "0010010100000101", 
    51 => "0011000011111100" );

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

entity L2_wlo_L1_WEIGHTSbck is
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

architecture arch of L2_wlo_L1_WEIGHTSbck is
    component L2_wlo_L1_WEIGHTSbck_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbck_rom_U :  component L2_wlo_L1_WEIGHTSbck_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


