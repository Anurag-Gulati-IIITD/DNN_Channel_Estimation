-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSvdy_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSvdy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010110110011001", 1 => "0011010000010001", 2 => "0010111101100000", 
    3 => "1010101110101011", 4 => "0010101011011001", 5 => "1010000001110101", 
    6 => "0010101111000011", 7 => "0010111111010001", 8 => "0010100000111100", 
    9 => "0010100001010111", 10 => "0010101000100100", 11 => "0010111110001011", 
    12 => "0010000011101101", 13 => "1011000100011001", 14 => "1001111011010010", 
    15 => "1011000101001010", 16 => "0001111111010110", 17 => "1011000011100011", 
    18 => "1010011101011011", 19 => "0010110001001011", 20 => "0010111101110010", 
    21 => "1010110100010101", 22 => "1010100011110011", 23 => "1011001101000101", 
    24 => "1001110101100101", 25 => "1010001011001101", 26 => "0010010110000100", 
    27 => "1011000110010010", 28 => "0001110000101111", 29 => "1010010100010011", 
    30 => "1001100110010010", 31 => "1010100111101001", 32 => "1010110001111000", 
    33 => "0010011101100010", 34 => "0010110010000010", 35 => "0010111010010110", 
    36 => "0010100000001100", 37 => "1010110001010000", 38 => "0011000010001000", 
    39 => "1010011110000101", 40 => "1010110110011100", 41 => "1011000000011001", 
    42 => "1010100000101011", 43 => "0010111000110001", 44 => "1010111000101000", 
    45 => "1001100011011101", 46 => "0010010111111101", 47 => "1010110110011010", 
    48 => "1010111111110110", 49 => "1011000100100010", 50 => "1010101111000100", 
    51 => "0010101011010110" );

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

entity L2_wlo_L1_WEIGHTSvdy is
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

architecture arch of L2_wlo_L1_WEIGHTSvdy is
    component L2_wlo_L1_WEIGHTSvdy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSvdy_rom_U :  component L2_wlo_L1_WEIGHTSvdy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


