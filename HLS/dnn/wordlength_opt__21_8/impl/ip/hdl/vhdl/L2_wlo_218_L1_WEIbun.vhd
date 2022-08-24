-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbun_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbun_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111001010000", 1 => "010010010010", 2 => "000101010000", 
    3 => "110010111011", 4 => "001111001100", 5 => "010000100010", 
    6 => "001111101100", 7 => "001001111111", 8 => "000010000001", 
    9 => "000001011001", 10 => "111011011000", 11 => "001011101011", 
    12 => "111110111010", 13 => "111101010110", 14 => "111111110010", 
    15 => "101110001111", 16 => "111100110101", 17 => "110100000110", 
    18 => "111011111111", 19 => "111110011000", 20 => "000010011001", 
    21 => "110110001110", 22 => "110000000000", 23 => "110001101011", 
    24 => "000101001001", 25 => "000101000111", 26 => "010011001100", 
    27 => "101100101000", 28 => "000000011100", 29 => "111000000001", 
    30 => "000011011001", 31 => "000011110111", 32 => "110111011001", 
    33 => "111100101111", 34 => "010100010111", 35 => "001101000100", 
    36 => "111101100001", 37 => "000010100000", 38 => "010011000011", 
    39 => "000010110011", 40 => "110101101110", 41 => "111100110100", 
    42 => "101001010100", 43 => "001011010101", 44 => "110100110111", 
    45 => "000110011010", 46 => "010001000101", 47 => "000010011101", 
    48 => "000011101111", 49 => "110100100000", 50 => "110100000101", 
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

entity L2_wlo_218_L1_WEIbun is
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

architecture arch of L2_wlo_218_L1_WEIbun is
    component L2_wlo_218_L1_WEIbun_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbun_rom_U :  component L2_wlo_218_L1_WEIbun_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


