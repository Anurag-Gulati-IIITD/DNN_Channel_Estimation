-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSHfu_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSHfu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010110001101001", 1 => "0010101011101100", 2 => "0010010101011001", 
    3 => "1010100011011000", 4 => "0010111110101011", 5 => "0011001000010110", 
    6 => "0010010000000101", 7 => "1010011101011100", 8 => "1010111110000100", 
    9 => "1010110011100011", 10 => "1010000111100011", 11 => "0010010111001010", 
    12 => "0001110110000111", 13 => "0010111101110110", 14 => "1010110101111111", 
    15 => "1011010000001110", 16 => "0010110110011101", 17 => "1010111100001101", 
    18 => "0010000001111101", 19 => "0001100111101011", 20 => "0010111000010111", 
    21 => "1010111110010000", 22 => "0010100000111001", 23 => "1011000010111011", 
    24 => "0011000010100110", 25 => "0010101010110101", 26 => "0010110011111111", 
    27 => "1010011001001101", 28 => "0010101000100011", 29 => "1011001100010010", 
    30 => "0010110000100100", 31 => "0010011010010010", 32 => "1000111001001111", 
    33 => "1010010010011101", 34 => "1010100101000011", 35 => "0010100101110000", 
    36 => "0010100010000001", 37 => "0010111001100111", 38 => "0010100101101001", 
    39 => "1010001111010011", 40 => "1010111100001001", 41 => "1000111110011110", 
    42 => "0010111111000011", 43 => "0011010001011111", 44 => "1010110011001111", 
    45 => "0010001111100101", 46 => "0010101100001011", 47 => "0010011101111101", 
    48 => "0010100111100101", 49 => "1001101010101010", 50 => "0010111100010001", 
    51 => "0010011111010110" );

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

entity L2_wlo_L1_WEIGHTSHfu is
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

architecture arch of L2_wlo_L1_WEIGHTSHfu is
    component L2_wlo_L1_WEIGHTSHfu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSHfu_rom_U :  component L2_wlo_L1_WEIGHTSHfu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


