-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbLp_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbLp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110110101010", 1 => "001100110000", 2 => "000010100001", 
    3 => "110100001011", 4 => "001100111010", 5 => "000100100010", 
    6 => "000000010011", 7 => "111101111001", 8 => "101000000001", 
    9 => "111011010110", 10 => "011000011011", 11 => "111100011111", 
    12 => "001000010001", 13 => "001110010010", 14 => "110111011010", 
    15 => "000101111100", 16 => "001011001100", 17 => "111001001010", 
    18 => "110011100111", 19 => "001011100110", 20 => "001010010001", 
    21 => "110011111011", 22 => "000000010000", 23 => "111001011100", 
    24 => "111110010111", 25 => "111010000110", 26 => "101100110101", 
    27 => "110101011011", 28 => "011000001110", 29 => "111001110001", 
    30 => "000100011101", 31 => "000010111100", 32 => "110110001100", 
    33 => "100100111101", 34 => "001001101101", 35 => "110001000110", 
    36 => "000000111010", 37 => "110101000101", 38 => "001000000001", 
    39 => "110111100111", 40 => "111100101100", 41 => "101001111010", 
    42 => "001010101011", 43 => "111001011111", 44 => "001111111110", 
    45 => "001000001100", 46 => "111100101100", 47 => "000110111110", 
    48 => "000011100101", 49 => "111101111100", 50 => "010110100110", 
    51 => "000000100011" );

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

entity L2_wlo_218_L1_WEIbLp is
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

architecture arch of L2_wlo_218_L1_WEIbLp is
    component L2_wlo_218_L1_WEIbLp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbLp_rom_U :  component L2_wlo_218_L1_WEIbLp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


