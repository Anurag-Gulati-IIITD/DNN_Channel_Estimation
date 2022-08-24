-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbxn_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbxn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010110111000001", 1 => "0010010111101000", 2 => "1010111111110100", 
    3 => "0010101000000100", 4 => "1011000001111100", 5 => "0010110000111000", 
    6 => "0010110001110101", 7 => "1010110111110000", 8 => "0011001000010000", 
    9 => "0010111110111000", 10 => "1011001011101010", 11 => "1010111110101001", 
    12 => "0010111001011010", 13 => "0010011001001011", 14 => "1010110001011001", 
    15 => "1010011000100001", 16 => "1010110110011001", 17 => "0010110011100100", 
    18 => "1010100110000111", 19 => "1010011110010011", 20 => "1010100100011011", 
    21 => "0010111000100000", 22 => "0010110001100000", 23 => "0010110000010000", 
    24 => "1010101010111101", 25 => "1010010001000001", 26 => "0010101111011110", 
    27 => "0010011000110110", 28 => "1010101011100100", 29 => "1010110011110010", 
    30 => "0011000110010010", 31 => "1011000001111111", 32 => "0011000001000001", 
    33 => "0010010110010000", 34 => "1010110001100111", 35 => "1010010011000100", 
    36 => "0010110110000111", 37 => "0010111100110001", 38 => "0010110011000110", 
    39 => "0010111101100010", 40 => "0010110100000101", 41 => "0011000000111001", 
    42 => "1010010110011001", 43 => "1010010011011011", 44 => "0010000000111001", 
    45 => "1010100100010011", 46 => "1001110110000111", 47 => "1010010010101101", 
    48 => "0010011011000111", 49 => "0011000001111100", 50 => "1010111011001110", 
    51 => "1010111110101001" );

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

entity L2_wlo_L1_WEIGHTSbxn is
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

architecture arch of L2_wlo_L1_WEIGHTSbxn is
    component L2_wlo_L1_WEIGHTSbxn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbxn_rom_U :  component L2_wlo_L1_WEIGHTSbxn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


