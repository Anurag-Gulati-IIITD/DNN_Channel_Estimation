-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbjl_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbjl_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1001110001110111", 1 => "0011001110111000", 2 => "0010110101010011", 
    3 => "0010101111110100", 4 => "0011000000000011", 5 => "1010011001001111", 
    6 => "1010010001111011", 7 => "0011000000011010", 8 => "1010111100101111", 
    9 => "0011000011001100", 10 => "0010111011101101", 11 => "1010011111101011", 
    12 => "1010101101001001", 13 => "1011001001001010", 14 => "0000011000001000", 
    15 => "1010110001100001", 16 => "1001101001110110", 17 => "1010011010011011", 
    18 => "1010100010000001", 19 => "0010101110001100", 20 => "1001001111101110", 
    21 => "0010001001110111", 22 => "1010111010110000", 23 => "1011001011111011", 
    24 => "0010111010010111", 25 => "0010111000011010", 26 => "0010010111011001", 
    27 => "1010110111011101", 28 => "0010001000011111", 29 => "1010010011001101", 
    30 => "0010001000111010", 31 => "0010110010111011", 32 => "1010111000100000", 
    33 => "0010110100111001", 34 => "1010110101011001", 35 => "0011000100111001", 
    36 => "0010101110111111", 37 => "1010001010111110", 38 => "0010110001111001", 
    39 => "1010110011000100", 40 => "0010010001100111", 41 => "1010000111110000", 
    42 => "1010111111110100", 43 => "0010101111000010", 44 => "0010011110100000", 
    45 => "0011000000111111", 46 => "1010011101101000", 47 => "1010110000000100", 
    48 => "1010110000011000", 49 => "0010110011100010", 50 => "0010110001011010", 
    51 => "0010110000111110" );

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

entity L2_wlo_L1_WEIGHTSbjl is
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

architecture arch of L2_wlo_L1_WEIGHTSbjl is
    component L2_wlo_L1_WEIGHTSbjl_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbjl_rom_U :  component L2_wlo_L1_WEIGHTSbjl_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


