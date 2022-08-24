-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSRg6_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSRg6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010010001110011", 1 => "1010111000100001", 2 => "0001100011001000", 
    3 => "1001111100111011", 4 => "0010101111111001", 5 => "0010000110111011", 
    6 => "1010111000111100", 7 => "0010110111001011", 8 => "0010110001111111", 
    9 => "0011001000010010", 10 => "1010111101101010", 11 => "0010100010001000", 
    12 => "1011000010100111", 13 => "0001110010111001", 14 => "0011001100001110", 
    15 => "1011000001101110", 16 => "0010101101110111", 17 => "1010010110000010", 
    18 => "1010110001010010", 19 => "0010100000101111", 20 => "0010111000000100", 
    21 => "1010100001010000", 22 => "1010001101111101", 23 => "0010110011001011", 
    24 => "1010000001011010", 25 => "0001111011110101", 26 => "1010110101110100", 
    27 => "0010010100011000", 28 => "1010010001110101", 29 => "1010110010100100", 
    30 => "1011001000010100", 31 => "0011000110101001", 32 => "0010100101101100", 
    33 => "1010100001000101", 34 => "1010110101111111", 35 => "0010110101110000", 
    36 => "1010100000101100", 37 => "0010101100111110", 38 => "0001100011101101", 
    39 => "1011000010110010", 40 => "1010010101100110", 41 => "1010000001110000", 
    42 => "1011000101110010", 43 => "0010101010100101", 44 => "1010001101100001", 
    45 => "0010011100011001", 46 => "1010100001001111", 47 => "1010100011001111", 
    48 => "1001100111001101", 49 => "0011000101011110", 50 => "1010100000000011", 
    51 => "0011000001111011" );

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

entity L2_wlo_L1_WEIGHTSRg6 is
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

architecture arch of L2_wlo_L1_WEIGHTSRg6 is
    component L2_wlo_L1_WEIGHTSRg6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSRg6_rom_U :  component L2_wlo_L1_WEIGHTSRg6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


