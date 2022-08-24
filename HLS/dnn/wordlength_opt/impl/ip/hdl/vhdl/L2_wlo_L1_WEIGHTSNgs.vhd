-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSNgs_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSNgs_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010011100101111", 1 => "0010111010111001", 2 => "0010100001001101", 
    3 => "0010010101101001", 4 => "0010110110100111", 5 => "1010100100000010", 
    6 => "1010100110100000", 7 => "0010101101001011", 8 => "1011000000011100", 
    9 => "1010111100001100", 10 => "0010111100111101", 11 => "1010101001010011", 
    12 => "0010011001110000", 13 => "0010111011110101", 14 => "1010111110110000", 
    15 => "0010101001001100", 16 => "0010101101000110", 17 => "1010110010000001", 
    18 => "0010010001110010", 19 => "0001110011000010", 20 => "0010100010110110", 
    21 => "0010011000111111", 22 => "1001111100101101", 23 => "1010110001001011", 
    24 => "0010010110000011", 25 => "1010000000001000", 26 => "1011001000001011", 
    27 => "0001101110110111", 28 => "0011010001000110", 29 => "1010010000110001", 
    30 => "0010111001010110", 31 => "0010001101000101", 32 => "1010010010101010", 
    33 => "1011000100011100", 34 => "0011000100101111", 35 => "1010110110100001", 
    36 => "0010101000101001", 37 => "1010011100001110", 38 => "0010110010110100", 
    39 => "0010011010101101", 40 => "0010110001101001", 41 => "1010111010101001", 
    42 => "0011000101011111", 43 => "0010010111110011", 44 => "0010100111111010", 
    45 => "0001011111000110", 46 => "0010111001011010", 47 => "0010110000001010", 
    48 => "1010101111111011", 49 => "1010111111101110", 50 => "0010110111010010", 
    51 => "0001111001100010" );

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

entity L2_wlo_L1_WEIGHTSNgs is
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

architecture arch of L2_wlo_L1_WEIGHTSNgs is
    component L2_wlo_L1_WEIGHTSNgs_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSNgs_rom_U :  component L2_wlo_L1_WEIGHTSNgs_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


