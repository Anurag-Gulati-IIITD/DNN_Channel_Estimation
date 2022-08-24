-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSibs_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSibs_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010011011001111", 1 => "1010100100000001", 2 => "1011000000111101", 
    3 => "0011000001000101", 4 => "0010100000010101", 5 => "1011001100010001", 
    6 => "0010011110110001", 7 => "0011000101010011", 8 => "1010100000010010", 
    9 => "1010110100001001", 10 => "1011000001000011", 11 => "1010111100000110", 
    12 => "1001001111110000", 13 => "1010100101101011", 14 => "0010111010000100", 
    15 => "1010010011101011", 16 => "0001110011111011", 17 => "0010111011111110", 
    18 => "0010010001000010", 19 => "1001101010011111", 20 => "0010110010010011", 
    21 => "0010011110010111", 22 => "1010110110101101", 23 => "1010101011101001", 
    24 => "0010110011011000", 25 => "1010110110001001", 26 => "1010111110110110", 
    27 => "1010100010110001", 28 => "0010000101111101", 29 => "0011000011010001", 
    30 => "1010100000110111", 31 => "1010100000001010", 32 => "1010110001011000", 
    33 => "1010101011011011", 34 => "0010100011110100", 35 => "0011000000000111", 
    36 => "1010111000100011", 37 => "0001111111011011", 38 => "0010111111111001", 
    39 => "0010100110011000", 40 => "1010010000100000", 41 => "1010101111010011", 
    42 => "0010100100011010", 43 => "0001101011101001", 44 => "0010010110001110", 
    45 => "1010111001000101", 46 => "1010000110100001", 47 => "1010010010100110", 
    48 => "1001100111010000", 49 => "1010001101101111", 50 => "0010011111101100", 
    51 => "1010101101101100" );

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

entity L2_wlo_L1_WEIGHTSibs is
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

architecture arch of L2_wlo_L1_WEIGHTSibs is
    component L2_wlo_L1_WEIGHTSibs_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSibs_rom_U :  component L2_wlo_L1_WEIGHTSibs_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


