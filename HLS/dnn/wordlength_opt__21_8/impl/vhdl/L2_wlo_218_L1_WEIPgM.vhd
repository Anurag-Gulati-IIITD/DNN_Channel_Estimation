-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIPgM_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIPgM_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111101010100", 1 => "111010000110", 2 => "111010110101", 
    3 => "000001010011", 4 => "001111000010", 5 => "101000110101", 
    6 => "001100100001", 7 => "001101001101", 8 => "101111010110", 
    9 => "111011101110", 10 => "010011100011", 11 => "000100001000", 
    12 => "111111101111", 13 => "111000111000", 14 => "010011001110", 
    15 => "001001101100", 16 => "111100110000", 17 => "111100100111", 
    18 => "110011011000", 19 => "111000101100", 20 => "001010100111", 
    21 => "111110101110", 22 => "111110100110", 23 => "001111101000", 
    24 => "111010010010", 25 => "000011010010", 26 => "110010110001", 
    27 => "111000011101", 28 => "111110101011", 29 => "001110011101", 
    30 => "100011000110", 31 => "001101111100", 32 => "110111000110", 
    33 => "000110100010", 34 => "000110000001", 35 => "001111011011", 
    36 => "111010000011", 37 => "100111011100", 38 => "111001111101", 
    39 => "110011111001", 40 => "111001100011", 41 => "110110101011", 
    42 => "111101010101", 43 => "110111011100", 44 => "000010010011", 
    45 => "000001100010", 46 => "111010110011", 47 => "111110010001", 
    48 => "111001000000", 49 => "111001011110", 50 => "010001110101", 
    51 => "001011001000" );

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

entity L2_wlo_218_L1_WEIPgM is
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

architecture arch of L2_wlo_218_L1_WEIPgM is
    component L2_wlo_218_L1_WEIPgM_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIPgM_rom_U :  component L2_wlo_218_L1_WEIPgM_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


