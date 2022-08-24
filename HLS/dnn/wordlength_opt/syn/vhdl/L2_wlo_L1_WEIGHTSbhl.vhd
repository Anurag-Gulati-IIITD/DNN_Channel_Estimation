-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbhl_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbhl_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010000011111000", 1 => "0010111011011000", 2 => "1010100010101001", 
    3 => "0010100110001100", 4 => "1010111111100110", 5 => "1001010111001010", 
    6 => "1010110101011000", 7 => "1010000010010001", 8 => "1011000110010101", 
    9 => "0010010010011001", 10 => "0010111000111101", 11 => "1001010010011011", 
    12 => "0010110011101010", 13 => "0001110111101110", 14 => "0010110101011001", 
    15 => "0010101001000100", 16 => "1010101110010101", 17 => "1001110101101000", 
    18 => "1010101100101010", 19 => "0010110001101100", 20 => "0010001110000111", 
    21 => "1010000100000000", 22 => "0011000001010100", 23 => "1010100001011100", 
    24 => "0010010101110100", 25 => "1010011010000010", 26 => "1011000011100111", 
    27 => "0011010000000100", 28 => "0010011011011011", 29 => "0010100000110011", 
    30 => "0010110001100001", 31 => "1010110001101000", 32 => "0010001110100101", 
    33 => "0010001110000010", 34 => "1011000001010111", 35 => "0010111101010100", 
    36 => "1010101001110000", 37 => "1011001100110111", 38 => "1010111110100110", 
    39 => "1010011111100101", 40 => "0010001011010000", 41 => "0010110000110110", 
    42 => "0010101101101101", 43 => "1010111000010010", 44 => "0010111101100001", 
    45 => "0010100011111000", 46 => "1010101100011000", 47 => "1010000011100111", 
    48 => "1010110111001101", 49 => "0011000010011100", 50 => "0010111010110101", 
    51 => "1011000011000011" );

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

entity L2_wlo_L1_WEIGHTSbhl is
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

architecture arch of L2_wlo_L1_WEIGHTSbhl is
    component L2_wlo_L1_WEIGHTSbhl_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbhl_rom_U :  component L2_wlo_L1_WEIGHTSbhl_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


