-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbHp_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbHp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010011001100000", 1 => "0001011101000011", 2 => "1010010110011011", 
    3 => "1010110011101110", 4 => "0011010000111000", 5 => "0010110101011101", 
    6 => "0010000010000010", 7 => "0010111100110101", 8 => "1010111001100011", 
    9 => "0011000101100100", 10 => "0010101000111000", 11 => "1010011001100101", 
    12 => "0010101010110100", 13 => "0010111101001110", 14 => "1010100101100111", 
    15 => "0010110101000101", 16 => "0010110011001010", 17 => "0010101111000110", 
    18 => "1010101111111111", 19 => "1010110010110100", 20 => "0000100000111010", 
    21 => "1010101010100011", 22 => "1010110010100100", 23 => "1010110011101010", 
    24 => "1010000110100011", 25 => "1000111100100101", 26 => "0010110010010011", 
    27 => "0010101000011100", 28 => "0010110101001111", 29 => "1010111000000001", 
    30 => "1001100101101100", 31 => "0010010011001101", 32 => "1010111101010001", 
    33 => "1010111001001001", 34 => "0011000010111011", 35 => "0010000000101010", 
    36 => "0010100011100101", 37 => "1010001011000101", 38 => "1001111000010011", 
    39 => "0010111100111100", 40 => "1010011111110001", 41 => "1011010011111101", 
    42 => "1011000111101011", 43 => "1010110100011000", 44 => "0010001000001110", 
    45 => "1010110000011000", 46 => "0010111101011110", 47 => "1010010110000001", 
    48 => "0010111100010010", 49 => "1010100110011011", 50 => "0011000011101111", 
    51 => "1010100011000101" );

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

entity L2_wlo_L1_WEIGHTSbHp is
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

architecture arch of L2_wlo_L1_WEIGHTSbHp is
    component L2_wlo_L1_WEIGHTSbHp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbHp_rom_U :  component L2_wlo_L1_WEIGHTSbHp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


