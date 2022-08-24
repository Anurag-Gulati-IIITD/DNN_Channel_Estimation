-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbqm_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbqm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010011010000011", 1 => "0010110111110100", 2 => "0010100111010001", 
    3 => "0010000100000001", 4 => "1001101111000010", 5 => "0010110010011010", 
    6 => "1010111011110000", 7 => "1001111100111101", 8 => "0011000100011010", 
    9 => "0010100011000100", 10 => "1010111000000001", 11 => "0010010001110001", 
    12 => "0010110010110011", 13 => "0011000101011110", 14 => "1010110110110100", 
    15 => "1010101001110111", 16 => "0001011100010000", 17 => "1010110100000111", 
    18 => "1010011000011100", 19 => "0010100110100011", 20 => "0010110100000110", 
    21 => "1010010101000101", 22 => "1010111001011000", 23 => "1010100100111010", 
    24 => "0010110000000100", 25 => "1010011101000000", 26 => "1011000111110100", 
    27 => "1011000101100001", 28 => "0001101011111010", 29 => "1010110100010101", 
    30 => "0011000010101001", 31 => "1010110001010001", 32 => "1010100011101100", 
    33 => "1010111000010000", 34 => "0010100000111110", 35 => "1001100011011011", 
    36 => "1010010101111010", 37 => "0010101000011001", 38 => "0011000011010111", 
    39 => "0010111101101110", 40 => "1010110000111100", 41 => "0001110101001100", 
    42 => "1010110101000011", 43 => "0010111001011111", 44 => "0010100111101010", 
    45 => "0010000100010010", 46 => "1010111001011001", 47 => "0010001001100100", 
    48 => "0010000001110011", 49 => "0010100100010111", 50 => "1011000010010000", 
    51 => "1011001000101110" );

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

entity L2_wlo_L1_WEIGHTSbqm is
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

architecture arch of L2_wlo_L1_WEIGHTSbqm is
    component L2_wlo_L1_WEIGHTSbqm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbqm_rom_U :  component L2_wlo_L1_WEIGHTSbqm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


