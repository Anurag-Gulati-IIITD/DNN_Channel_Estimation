-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbak_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbak_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010011010100011", 1 => "0010010000111111", 2 => "0011000101010101", 
    3 => "0010100111001101", 4 => "1011000001011111", 5 => "0011001111010101", 
    6 => "0010110110010110", 7 => "1011010001101001", 8 => "1010000000010100", 
    9 => "0011000110001011", 10 => "0010000010010011", 11 => "1010110000110110", 
    12 => "1010110110101101", 13 => "0010110100100010", 14 => "0010001010101000", 
    15 => "1010101110001001", 16 => "0010101011110110", 17 => "1011000011100111", 
    18 => "1001111100001010", 19 => "1010100000111001", 20 => "1010110111111010", 
    21 => "1010010010010000", 22 => "0011000100011111", 23 => "1010110000101010", 
    24 => "0010001001101101", 25 => "0010110010111101", 26 => "0011000010010011", 
    27 => "0011000101101010", 28 => "1010001101100101", 29 => "1011010101100101", 
    30 => "1010000101010100", 31 => "0010111100010111", 32 => "0010110010000010", 
    33 => "1010011011101011", 34 => "0010101100000010", 35 => "1010100100111111", 
    36 => "0010110111111001", 37 => "1010111100101010", 38 => "1010110101110111", 
    39 => "1010111101100101", 40 => "1010011100101010", 41 => "0011000100000100", 
    42 => "1011001011101101", 43 => "1010010101110111", 44 => "1010101100000011", 
    45 => "0010111000110110", 46 => "1010100010010110", 47 => "1010110101001011", 
    48 => "1010110011011101", 49 => "1010010001100010", 50 => "0010111111111010", 
    51 => "0010111001111010" );

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

entity L2_wlo_L1_WEIGHTSbak is
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

architecture arch of L2_wlo_L1_WEIGHTSbak is
    component L2_wlo_L1_WEIGHTSbak_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbak_rom_U :  component L2_wlo_L1_WEIGHTSbak_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


