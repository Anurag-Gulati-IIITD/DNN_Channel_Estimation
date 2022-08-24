-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSWhU_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSWhU_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100111111100", 1 => "0011000100001001", 2 => "0010110001110000", 
    3 => "1010111011100001", 4 => "0011000011010100", 5 => "1010110010000001", 
    6 => "0010010011111010", 7 => "1010101100110010", 8 => "0011001011101000", 
    9 => "1010101110011011", 10 => "0001000011110001", 11 => "1010100011010010", 
    12 => "0010111101010011", 13 => "1011001100111000", 14 => "1010100001000111", 
    15 => "0011001010001111", 16 => "0001101110101011", 17 => "0010001111101110", 
    18 => "1010101110011111", 19 => "0010101101010110", 20 => "0010100000001110", 
    21 => "1010100001110101", 22 => "0010100000011111", 23 => "1011000001101000", 
    24 => "0010100000011001", 25 => "1001111000110011", 26 => "0010101100111111", 
    27 => "0011010000011110", 28 => "1010111000100000", 29 => "0010101011001000", 
    30 => "1010000101111101", 31 => "1010110011100101", 32 => "1011000011110011", 
    33 => "0010110111101100", 34 => "0010101000001000", 35 => "0011001100110101", 
    36 => "0010101000011000", 37 => "1010100010100110", 38 => "1011011000011100", 
    39 => "0010100011110100", 40 => "0010000111110110", 41 => "1010100011001100", 
    42 => "0010110101000011", 43 => "1011000101111001", 44 => "1010011100111111", 
    45 => "0010011100100110", 46 => "0010000101010100", 47 => "1010100010110010", 
    48 => "0010110001001010", 49 => "1010011100011110", 50 => "1011000000011000", 
    51 => "1001110011101101" );

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

entity L2_wlo_L1_WEIGHTSWhU is
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

architecture arch of L2_wlo_L1_WEIGHTSWhU is
    component L2_wlo_L1_WEIGHTSWhU_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSWhU_rom_U :  component L2_wlo_L1_WEIGHTSWhU_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


