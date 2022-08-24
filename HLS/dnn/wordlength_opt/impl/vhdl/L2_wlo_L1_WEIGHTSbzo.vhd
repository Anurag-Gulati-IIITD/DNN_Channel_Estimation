-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbzo_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbzo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010110101101100", 1 => "1010111001101011", 2 => "1010100101001111", 
    3 => "1010011100010000", 4 => "0010011100000100", 5 => "1011001101001110", 
    6 => "0001101011000111", 7 => "0010110001100011", 8 => "0010111010100110", 
    9 => "0010110001101110", 10 => "0010110011101101", 11 => "0010101000001011", 
    12 => "0010110101110101", 13 => "1010110010001001", 14 => "0010110000110100", 
    15 => "0011000101111111", 16 => "0010100111011011", 17 => "0010110011101110", 
    18 => "0010010010000100", 19 => "1010110010000110", 20 => "1010100010110101", 
    21 => "0010110101101110", 22 => "1011000011110111", 23 => "0010111111111101", 
    24 => "1010101001001000", 25 => "1010110100001001", 26 => "1010100001110011", 
    27 => "1010000001000001", 28 => "1001010101000010", 29 => "0011000011111000", 
    30 => "1010110010111011", 31 => "0010011011110110", 32 => "0010100000111111", 
    33 => "0010011001100100", 34 => "0010100010001011", 35 => "1010011111011010", 
    36 => "1010110001010111", 37 => "1010011110111101", 38 => "1010110000000100", 
    39 => "0010101110000110", 40 => "0010101001100001", 41 => "0001011000100011", 
    42 => "1011000010000011", 43 => "1011000000111011", 44 => "0010110011011010", 
    45 => "0010100110000011", 46 => "1010100000100101", 47 => "1010010110000000", 
    48 => "1010101111100011", 49 => "1010010101001010", 50 => "1010011100011111", 
    51 => "1010110010010111" );

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

entity L2_wlo_L1_WEIGHTSbzo is
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

architecture arch of L2_wlo_L1_WEIGHTSbzo is
    component L2_wlo_L1_WEIGHTSbzo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbzo_rom_U :  component L2_wlo_L1_WEIGHTSbzo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


