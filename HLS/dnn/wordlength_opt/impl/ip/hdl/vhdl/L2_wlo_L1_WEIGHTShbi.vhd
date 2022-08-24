-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTShbi_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTShbi_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010110011001010", 1 => "0010111100101010", 2 => "1010100110010100", 
    3 => "0011000101010010", 4 => "1010010110010100", 5 => "1010100001110001", 
    6 => "1011000001011100", 7 => "0010101011111011", 8 => "1011001101011011", 
    9 => "1010110101010100", 10 => "1011000011000011", 11 => "1011000000011100", 
    12 => "1010011110111011", 13 => "0010110010101111", 14 => "0010100100000001", 
    15 => "0010110011010000", 16 => "1010101001111111", 17 => "0010110011011100", 
    18 => "0010100001101110", 19 => "0010010101001000", 20 => "1010110101111010", 
    21 => "0010010001111101", 22 => "0010100001100010", 23 => "1010111010010011", 
    24 => "1010110011101011", 25 => "0010101011010011", 26 => "1011001100010000", 
    27 => "1011000110100110", 28 => "0010100000010111", 29 => "0011000000111101", 
    30 => "1010111000000011", 31 => "0010101011101011", 32 => "0010010100111110", 
    33 => "1010101110010001", 34 => "1011000000011110", 35 => "1010101001100110", 
    36 => "0010101010111100", 37 => "0011001000011111", 38 => "0010101010001011", 
    39 => "1010000011100001", 40 => "0010101000000001", 41 => "1010010101101101", 
    42 => "1010011000100101", 43 => "1010111101100011", 44 => "0010101000101000", 
    45 => "0010010011101111", 46 => "1010111100001100", 47 => "0010101010101010", 
    48 => "0010100011010000", 49 => "0010110110100000", 50 => "0011000001011110", 
    51 => "1010000000110010" );

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

entity L2_wlo_L1_WEIGHTShbi is
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

architecture arch of L2_wlo_L1_WEIGHTShbi is
    component L2_wlo_L1_WEIGHTShbi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTShbi_rom_U :  component L2_wlo_L1_WEIGHTShbi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


