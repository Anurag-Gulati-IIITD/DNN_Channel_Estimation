-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbil_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbil_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010011111001100", 1 => "0010111000110010", 2 => "0010001000110100", 
    3 => "0010100110111110", 4 => "1010101101000000", 5 => "1010110100011111", 
    6 => "1011000010001100", 7 => "0010101011100000", 8 => "1011000110101110", 
    9 => "0010100111000100", 10 => "0011001010010001", 11 => "1010101101111011", 
    12 => "0010011010110001", 13 => "1010111111100010", 14 => "0010011110011110", 
    15 => "1010110000000000", 16 => "1010101100010011", 17 => "1010100011101011", 
    18 => "0001101100001101", 19 => "0001111101010111", 20 => "0001100000100110", 
    21 => "1010100001001001", 22 => "0010100011101011", 23 => "1011001001101010", 
    24 => "0010100010110011", 25 => "1010100110111101", 26 => "1011000000110101", 
    27 => "0010110100001111", 28 => "1010111100000111", 29 => "0010110101111100", 
    30 => "1010001101000100", 31 => "0010110001110110", 32 => "1010010001100111", 
    33 => "1010101101001101", 34 => "1011001000101000", 35 => "0010111110100111", 
    36 => "1001111100011110", 37 => "1010111011100100", 38 => "1010111110100011", 
    39 => "0010110010111001", 40 => "1010101111001100", 41 => "0010101000111110", 
    42 => "1010111000111010", 43 => "0010011011111111", 44 => "0010111000000100", 
    45 => "0010111010111010", 46 => "1011000000101001", 47 => "1001110100011101", 
    48 => "1011000001001100", 49 => "0011000111001100", 50 => "0011001011010111", 
    51 => "1010010001110011" );

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

entity L2_wlo_L1_WEIGHTSbil is
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

architecture arch of L2_wlo_L1_WEIGHTSbil is
    component L2_wlo_L1_WEIGHTSbil_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbil_rom_U :  component L2_wlo_L1_WEIGHTSbil_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


