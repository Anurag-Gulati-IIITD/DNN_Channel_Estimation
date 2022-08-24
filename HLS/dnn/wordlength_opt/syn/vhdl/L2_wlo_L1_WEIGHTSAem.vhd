-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSAem_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSAem_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010111110011011", 1 => "0011000001010100", 2 => "1010110010011110", 
    3 => "1011000010000010", 4 => "0010101110010110", 5 => "1011000100010010", 
    6 => "1010101010111110", 7 => "0010101000110011", 8 => "1011000011101111", 
    9 => "1010111101100000", 10 => "0001111000101010", 11 => "0010110000011111", 
    12 => "0010101001000001", 13 => "1001001100001110", 14 => "1010100011000111", 
    15 => "1011001000101100", 16 => "0000101000101001", 17 => "0010010001000001", 
    18 => "1001110000011111", 19 => "1010101001000000", 20 => "0010010000110100", 
    21 => "0010100011100100", 22 => "1010010000001100", 23 => "1011000100101111", 
    24 => "1010101011010010", 25 => "0001010000100011", 26 => "1010000011111000", 
    27 => "1010100001111101", 28 => "0010111100110011", 29 => "0011000111101010", 
    30 => "0010110110010001", 31 => "1010101101111100", 32 => "1010110000011110", 
    33 => "1010110011000100", 34 => "1010110111000011", 35 => "1010111111000010", 
    36 => "1010110010001110", 37 => "0010100010001100", 38 => "1010101111011101", 
    39 => "0010110011010011", 40 => "1010100100111010", 41 => "1010101011011100", 
    42 => "0010100011100110", 43 => "0011000011100111", 44 => "1010110000010001", 
    45 => "1010111011110000", 46 => "0010110001000010", 47 => "0010110101001100", 
    48 => "0001100010101100", 49 => "0010110100111000", 50 => "0010110100001100", 
    51 => "1010110100011100" );

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

entity L2_wlo_L1_WEIGHTSAem is
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

architecture arch of L2_wlo_L1_WEIGHTSAem is
    component L2_wlo_L1_WEIGHTSAem_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSAem_rom_U :  component L2_wlo_L1_WEIGHTSAem_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


