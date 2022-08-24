-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIAem_rom is 
    generic(
             DWIDTH     : integer := 12; 
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


architecture rtl of L2_wlo_218_L1_WEIAem_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111101100101", 1 => "101111000110", 2 => "111010010001", 
    3 => "110101001111", 4 => "001010000001", 5 => "111001110001", 
    6 => "000000110001", 7 => "111110101011", 8 => "011111010101", 
    9 => "100101101001", 10 => "110001000001", 11 => "010011010001", 
    12 => "110111010110", 13 => "010110010000", 14 => "111010011110", 
    15 => "111110011100", 16 => "000101010000", 17 => "000001110011", 
    18 => "001001011100", 19 => "111111110111", 20 => "000001001011", 
    21 => "111100110110", 22 => "110011111101", 23 => "010101100110", 
    24 => "111000010001", 25 => "111101000010", 26 => "000111110010", 
    27 => "101111010110", 28 => "111011001001", 29 => "000101010101", 
    30 => "111110010100", 31 => "111111111001", 32 => "000001011011", 
    33 => "110010101100", 34 => "010010000000", 35 => "100000100010", 
    36 => "111111100011", 37 => "001111110100", 38 => "011010011000", 
    39 => "111001001110", 40 => "000110011100", 41 => "101110100011", 
    42 => "001011111111", 43 => "111100110111", 44 => "000101101101", 
    45 => "110100111110", 46 => "000100011100", 47 => "110010000110", 
    48 => "001001101101", 49 => "101010001010", 50 => "100001110100", 
    51 => "000010010111" );

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

entity L2_wlo_218_L1_WEIAem is
    generic (
        DataWidth : INTEGER := 12;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIAem is
    component L2_wlo_218_L1_WEIAem_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIAem_rom_U :  component L2_wlo_218_L1_WEIAem_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


