-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbdk_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbdk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010110000100010", 1 => "0010110000101010", 2 => "1011000010110110", 
    3 => "0010110100010010", 4 => "0010110101100000", 5 => "1011010011110010", 
    6 => "1010110001111110", 7 => "0011000111001101", 8 => "0010000000111010", 
    9 => "0010110001100100", 10 => "1010111010111100", 11 => "1010011100110010", 
    12 => "1010110001010011", 13 => "1010111011000100", 14 => "0001111000111000", 
    15 => "0010110001110001", 16 => "0001101001101101", 17 => "0010110000110011", 
    18 => "0010100000010100", 19 => "1001110100010000", 20 => "1010110010110100", 
    21 => "0010100111111001", 22 => "1010111001111110", 23 => "0010000000111100", 
    24 => "1011000010011000", 25 => "0010101101100101", 26 => "0010100111000111", 
    27 => "1011010000010111", 28 => "1010110101100111", 29 => "0011000010011101", 
    30 => "0010100100000010", 31 => "0010110000110011", 32 => "1010011110101101", 
    33 => "0010101001001010", 34 => "1010101100000111", 35 => "1010110001110101", 
    36 => "1000111111110110", 37 => "0011000010001000", 38 => "0011000010101101", 
    39 => "1010101001000000", 40 => "0010110011001001", 41 => "1010110011010100", 
    42 => "0010111001000011", 43 => "1010111011100010", 44 => "0010100110100001", 
    45 => "0010011000000000", 46 => "1001111100011000", 47 => "0010000101000001", 
    48 => "1001110011000000", 49 => "0001111111010100", 50 => "0010011001111001", 
    51 => "0010101010010001" );

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

entity L2_wlo_L1_WEIGHTSbdk is
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

architecture arch of L2_wlo_L1_WEIGHTSbdk is
    component L2_wlo_L1_WEIGHTSbdk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbdk_rom_U :  component L2_wlo_L1_WEIGHTSbdk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


