-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbqm_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbqm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000111001010", 1 => "101100100001", 2 => "111010011010", 
    3 => "001010000000", 4 => "110010000101", 5 => "011100000100", 
    6 => "111001100111", 7 => "101001110001", 8 => "111010011001", 
    9 => "110110000011", 10 => "001000010011", 11 => "001100001011", 
    12 => "010000010010", 13 => "001100010000", 14 => "111001101101", 
    15 => "000011111001", 16 => "111001010100", 17 => "111100110100", 
    18 => "111111000111", 19 => "000001110001", 20 => "001000011110", 
    21 => "111100100011", 22 => "011101111011", 23 => "010101010000", 
    24 => "111010010110", 25 => "110111101001", 26 => "100111101011", 
    27 => "010000100111", 28 => "000110101100", 29 => "101111111010", 
    30 => "000101101100", 31 => "111001101101", 32 => "001101101011", 
    33 => "110010010100", 34 => "111001000001", 35 => "000100001110", 
    36 => "111011001101", 37 => "000011011110", 38 => "110010110001", 
    39 => "001100010001", 40 => "001000010101", 41 => "001011010100", 
    42 => "111111101111", 43 => "111011110110", 44 => "000000101000", 
    45 => "111101001101", 46 => "110101110100", 47 => "111111111110", 
    48 => "001000111111", 49 => "010010100101", 50 => "000100001001", 
    51 => "110100101001" );

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

entity L2_wlo_218_L1_WEIbqm is
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

architecture arch of L2_wlo_218_L1_WEIbqm is
    component L2_wlo_218_L1_WEIbqm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbqm_rom_U :  component L2_wlo_218_L1_WEIbqm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


