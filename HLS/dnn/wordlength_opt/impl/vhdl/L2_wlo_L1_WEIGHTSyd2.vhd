-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSyd2_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSyd2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010101111011010", 1 => "1010110111011100", 2 => "1010101011110111", 
    3 => "0010110101100101", 4 => "1010100110101000", 5 => "1010110111000011", 
    6 => "1010110100101111", 7 => "1010111001000001", 8 => "1010110111111001", 
    9 => "1010101110001011", 10 => "1010110101111011", 11 => "1011000010110111", 
    12 => "1010110101010100", 13 => "1010100000010100", 14 => "0010110111101000", 
    15 => "0010110111011011", 16 => "1010101100110100", 17 => "0010110001000100", 
    18 => "0010000011110100", 19 => "1010100111111110", 20 => "1010111000010100", 
    21 => "0010101000100000", 22 => "1010101110000010", 23 => "0011000011011000", 
    24 => "1010010100100010", 25 => "1010101010111010", 26 => "0010111110110011", 
    27 => "0011001000110101", 28 => "1010110110110001", 29 => "0010100011011111", 
    30 => "1010111010101011", 31 => "0010100011001110", 32 => "0010110000101101", 
    33 => "0010111000010010", 34 => "1010111110011001", 35 => "1010111100111010", 
    36 => "0010111000001010", 37 => "1001111101011011", 38 => "1011000001010011", 
    39 => "1011000001101010", 40 => "0010011011001000", 41 => "0010100001001111", 
    42 => "0010101111111111", 43 => "1011000101110111", 44 => "1010100111111111", 
    45 => "1010000000110110", 46 => "1010101000110011", 47 => "1010100100000110", 
    48 => "0010000101011001", 49 => "0010011000001000", 50 => "0010111111010110", 
    51 => "0010110011100010" );

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

entity L2_wlo_L1_WEIGHTSyd2 is
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

architecture arch of L2_wlo_L1_WEIGHTSyd2 is
    component L2_wlo_L1_WEIGHTSyd2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSyd2_rom_U :  component L2_wlo_L1_WEIGHTSyd2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


