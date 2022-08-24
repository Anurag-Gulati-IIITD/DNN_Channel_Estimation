-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSZio_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSZio_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100010100101", 1 => "1010101010000010", 2 => "0010111111011101", 
    3 => "0010100111000010", 4 => "1011000110000101", 5 => "0010111011001000", 
    6 => "0001100001000111", 7 => "1010001010000001", 8 => "1010111101001101", 
    9 => "0010100010110000", 10 => "0010110101101001", 11 => "0010110001110000", 
    12 => "0001111011001010", 13 => "0001111011100011", 14 => "0011001000100110", 
    15 => "1010111010101111", 16 => "1010110100000111", 17 => "1010110110101110", 
    18 => "1010000000100100", 19 => "0010100010110110", 20 => "0010000110001010", 
    21 => "1010011001111110", 22 => "0010111001011101", 23 => "0010101100001101", 
    24 => "0010110110001101", 25 => "0010100100101100", 26 => "0011000001111111", 
    27 => "1011010101111000", 28 => "1010001101001001", 29 => "1010110111101011", 
    30 => "1010110111011110", 31 => "1011000001101110", 32 => "0010100011011001", 
    33 => "0010100000001110", 34 => "1010011011100011", 35 => "0001100011111001", 
    36 => "0010100111000111", 37 => "1010110010001010", 38 => "0011010001100101", 
    39 => "0011000000000100", 40 => "0001101001010001", 41 => "0011000011110111", 
    42 => "1010110011111100", 43 => "0011000101010111", 44 => "1010110101001001", 
    45 => "1010101101001110", 46 => "1001111100111111", 47 => "1010110011100110", 
    48 => "1010010010000101", 49 => "0010100101001010", 50 => "0010111101100000", 
    51 => "1010101100000100" );

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

entity L2_wlo_L1_WEIGHTSZio is
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

architecture arch of L2_wlo_L1_WEIGHTSZio is
    component L2_wlo_L1_WEIGHTSZio_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSZio_rom_U :  component L2_wlo_L1_WEIGHTSZio_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


