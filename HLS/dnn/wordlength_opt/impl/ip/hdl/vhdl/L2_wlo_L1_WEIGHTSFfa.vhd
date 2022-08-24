-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSFfa_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSFfa_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010010101011110", 1 => "1010100111100100", 2 => "1010100100101001", 
    3 => "0010000100110010", 4 => "0010111110000100", 5 => "1011000111001011", 
    6 => "0010111001000010", 7 => "0010111010011011", 8 => "1011000000101001", 
    9 => "1010100001000111", 10 => "0011000011100100", 11 => "0010100000100010", 
    12 => "1001100000111110", 13 => "1010101100011101", 14 => "0011000011001111", 
    15 => "0010110011011001", 16 => "1010011001111001", 17 => "1010011011000111", 
    18 => "1010111001001111", 19 => "1010101101001100", 20 => "0010110101001111", 
    21 => "1010000100010111", 22 => "1010000110011001", 23 => "0010111111010000", 
    24 => "1010100110110101", 25 => "0010011010010011", 26 => "1010111010011110", 
    27 => "1010101110001010", 28 => "1010000101000001", 29 => "0010111100111011", 
    30 => "1011001100111010", 31 => "0010111011111001", 32 => "1010110001110011", 
    33 => "0010101010001011", 34 => "0010101000000100", 35 => "0010111110110110", 
    36 => "1010100111110001", 37 => "1011001000100011", 38 => "1010101000001000", 
    39 => "1010111000001101", 40 => "1010101001110011", 41 => "1010110010101001", 
    42 => "1010010101010111", 43 => "1010110001000110", 44 => "0010010010100000", 
    45 => "0010001000100100", 46 => "1010100100110000", 47 => "1010001011100100", 
    48 => "1010101011111110", 49 => "1010101010000111", 50 => "0011000001110110", 
    51 => "0010110110010001" );

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

entity L2_wlo_L1_WEIGHTSFfa is
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

architecture arch of L2_wlo_L1_WEIGHTSFfa is
    component L2_wlo_L1_WEIGHTSFfa_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSFfa_rom_U :  component L2_wlo_L1_WEIGHTSFfa_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


