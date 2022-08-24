-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSGfk_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSGfk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010101001101110", 1 => "0010100010100011", 2 => "0010111111010010", 
    3 => "1010110100000111", 4 => "0011001001000001", 5 => "0010100011011110", 
    6 => "0010110001001000", 7 => "0010100101100011", 8 => "1011001100110001", 
    9 => "1010111111011010", 10 => "0010101101111110", 11 => "0001111101001001", 
    12 => "1010110011111110", 13 => "1010100001010010", 14 => "0011000100100011", 
    15 => "1010111101111010", 16 => "1010000001101110", 17 => "1010001000010101", 
    18 => "1010101111011010", 19 => "0010010001010100", 20 => "0010110101011101", 
    21 => "1010111000110010", 22 => "1010110011011011", 23 => "1010111000010000", 
    24 => "0010010001111011", 25 => "0001101100001011", 26 => "1010011010010011", 
    27 => "1010110001111001", 28 => "0010100011011101", 29 => "1010100110101111", 
    30 => "1010110001000000", 31 => "0010001011010001", 32 => "1010110101110101", 
    33 => "1010110110011010", 34 => "0010110000111111", 35 => "0010101100010011", 
    36 => "0010110010010011", 37 => "1011000010101100", 38 => "1010001000110010", 
    39 => "1010111111100100", 40 => "1010100011001101", 41 => "1010110101010110", 
    42 => "0011000000001000", 43 => "0010111011111111", 44 => "1010101001011101", 
    45 => "1010101000100001", 46 => "1010010011111100", 47 => "1010100000101000", 
    48 => "1010010101100101", 49 => "1010110000001010", 50 => "0011000111100000", 
    51 => "0010110110010100" );

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

entity L2_wlo_L1_WEIGHTSGfk is
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

architecture arch of L2_wlo_L1_WEIGHTSGfk is
    component L2_wlo_L1_WEIGHTSGfk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSGfk_rom_U :  component L2_wlo_L1_WEIGHTSGfk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


