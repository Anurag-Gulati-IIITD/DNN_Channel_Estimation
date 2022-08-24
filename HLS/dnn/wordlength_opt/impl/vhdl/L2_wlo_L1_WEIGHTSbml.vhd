-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbml_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbml_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010101111110001", 1 => "1011000001001011", 2 => "1011000010111110", 
    3 => "0010111010001010", 4 => "1010111010001001", 5 => "1010010111100001", 
    6 => "1001100000001110", 7 => "1010110110011100", 8 => "1010111001010011", 
    9 => "1010100100011111", 10 => "1010110110101111", 11 => "1011001010100100", 
    12 => "1010000111000100", 13 => "0010110101010001", 14 => "0010110101100011", 
    15 => "0011000100010101", 16 => "1001110101010010", 17 => "0010110000000111", 
    18 => "0010100111011010", 19 => "1010111100101011", 20 => "1010110011011100", 
    21 => "0010100111000010", 22 => "0011000011000101", 23 => "0011000101001001", 
    24 => "1010101100011011", 25 => "1010110001101011", 26 => "0011001011000010", 
    27 => "0011000101100110", 28 => "0010100010001111", 29 => "1010001100000011", 
    30 => "1010011001111110", 31 => "0010010010001000", 32 => "0010110010111000", 
    33 => "0010011111100110", 34 => "1010110001000101", 35 => "1011001000110101", 
    36 => "0010011110001111", 37 => "0011000000100010", 38 => "1011000000001110", 
    39 => "1010111000000101", 40 => "0010110010101101", 41 => "0010111101001000", 
    42 => "0010110101101001", 43 => "1010110110010101", 44 => "0010110110100011", 
    45 => "1010111100011111", 46 => "1010111100110101", 47 => "0010001110010101", 
    48 => "0010011000111000", 49 => "0010101100110001", 50 => "0010110000110010", 
    51 => "0010101100011001" );

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

entity L2_wlo_L1_WEIGHTSbml is
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

architecture arch of L2_wlo_L1_WEIGHTSbml is
    component L2_wlo_L1_WEIGHTSbml_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbml_rom_U :  component L2_wlo_L1_WEIGHTSbml_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


