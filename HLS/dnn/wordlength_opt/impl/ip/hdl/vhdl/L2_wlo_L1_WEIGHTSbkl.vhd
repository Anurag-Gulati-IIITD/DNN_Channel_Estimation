-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbkl_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbkl_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010101010111101", 1 => "0011000010010011", 2 => "0010100101000001", 
    3 => "1010111010001000", 4 => "0010111110011000", 5 => "0011000000100011", 
    6 => "0010111111011001", 7 => "0010110011111110", 8 => "0010010000001011", 
    9 => "0010000110011010", 10 => "1010100010011110", 11 => "0010110111011000", 
    12 => "1010000001011110", 13 => "1010010101001101", 14 => "1001011010000001", 
    15 => "1011000001110000", 16 => "1010011001010001", 17 => "1010110111110010", 
    18 => "1010100000000011", 19 => "1010001001111001", 20 => "0010010011001100", 
    21 => "1010110011100100", 22 => "1010111111111111", 23 => "1010111100101000", 
    24 => "0010100100100111", 25 => "0010100100011110", 26 => "0011000011001100", 
    27 => "1011000011010111", 28 => "0001101100110111", 29 => "1010101111111010", 
    30 => "0010011011001010", 31 => "0010011110111001", 32 => "1010110001001110", 
    33 => "1010011010000011", 34 => "0011000100010111", 35 => "0010111010001001", 
    36 => "1010010011110101", 37 => "0010010100000001", 38 => "0011000011000100", 
    39 => "0010010110011111", 40 => "1010110100100100", 41 => "1010011001011111", 
    42 => "1011000110101011", 43 => "0010110110101011", 44 => "1010110110010000", 
    45 => "0010101001101100", 46 => "0011000001000110", 47 => "0010010011101111", 
    48 => "0010011101111011", 49 => "1010110110111111", 50 => "1010110111110101", 
    51 => "0010010010111110" );

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

entity L2_wlo_L1_WEIGHTSbkl is
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

architecture arch of L2_wlo_L1_WEIGHTSbkl is
    component L2_wlo_L1_WEIGHTSbkl_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbkl_rom_U :  component L2_wlo_L1_WEIGHTSbkl_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


