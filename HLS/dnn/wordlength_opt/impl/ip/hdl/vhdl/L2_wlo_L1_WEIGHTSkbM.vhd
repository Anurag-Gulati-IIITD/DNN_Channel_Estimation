-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSkbM_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSkbM_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010101010000111", 1 => "1010101111000111", 2 => "0010110011101010", 
    3 => "1010111100101101", 4 => "0010111110000100", 5 => "0010111110100001", 
    6 => "0010010100010000", 7 => "0010001101111000", 8 => "0011000100011001", 
    9 => "1011000000001100", 10 => "0011000101001101", 11 => "0011000100011001", 
    12 => "0010101110011011", 13 => "1010110001101110", 14 => "0010011100001000", 
    15 => "1010110000010010", 16 => "0010011101010010", 17 => "1010100101100010", 
    18 => "1010110001100001", 19 => "0010110111111011", 20 => "0010111110000011", 
    21 => "1011000100011001", 22 => "0010100011011001", 23 => "0010111101011010", 
    24 => "0010111011111000", 25 => "0010011111001000", 26 => "1010010001001000", 
    27 => "0010100110011101", 28 => "0010110011101110", 29 => "1011000010011011", 
    30 => "0010101001000100", 31 => "1010100001001001", 32 => "1010000011001011", 
    33 => "1010100010001011", 34 => "0010110011111101", 35 => "0010101000010011", 
    36 => "0000001010001110", 37 => "1011000000001000", 38 => "1010111100001101", 
    39 => "0011000101000101", 40 => "1010111010110000", 41 => "1011000000001010", 
    42 => "0010101111010000", 43 => "0011000010100110", 44 => "0010010011111010", 
    45 => "1010110010101000", 46 => "0011000011000111", 47 => "1010110100101111", 
    48 => "0010101100111011", 49 => "1011001001101010", 50 => "1011000111110001", 
    51 => "1001100100011000" );

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

entity L2_wlo_L1_WEIGHTSkbM is
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

architecture arch of L2_wlo_L1_WEIGHTSkbM is
    component L2_wlo_L1_WEIGHTSkbM_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSkbM_rom_U :  component L2_wlo_L1_WEIGHTSkbM_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


