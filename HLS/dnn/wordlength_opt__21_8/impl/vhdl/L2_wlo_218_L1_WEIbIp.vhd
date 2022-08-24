-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbIp_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbIp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111011111010", 1 => "110101001010", 2 => "110011110000", 
    3 => "000010010100", 4 => "110110111010", 5 => "101011010000", 
    6 => "111100101100", 7 => "000101100000", 8 => "010110010001", 
    9 => "001010100000", 10 => "110111010110", 11 => "111011000011", 
    12 => "000111101100", 13 => "110010010011", 14 => "000110110001", 
    15 => "011000100011", 16 => "111001100110", 17 => "010000000000", 
    18 => "111111000001", 19 => "110101011001", 20 => "110110001100", 
    21 => "000011000111", 22 => "110111101111", 23 => "001010000110", 
    24 => "101110100011", 25 => "111110010111", 26 => "000101010000", 
    27 => "000111010010", 28 => "101001101110", 29 => "011010011010", 
    30 => "000010000001", 31 => "101111111110", 32 => "001011000010", 
    33 => "000111110101", 34 => "101101111110", 35 => "110000001000", 
    36 => "111101011010", 37 => "010011000111", 38 => "101101101110", 
    39 => "001001011001", 40 => "000100000111", 41 => "001001111110", 
    42 => "101101000000", 43 => "101110111000", 44 => "000011010010", 
    45 => "000101011001", 46 => "111110000000", 47 => "111100011001", 
    48 => "111100001100", 49 => "000101000110", 50 => "100110110010", 
    51 => "110011001111" );

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

entity L2_wlo_218_L1_WEIbIp is
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

architecture arch of L2_wlo_218_L1_WEIbIp is
    component L2_wlo_218_L1_WEIbIp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbIp_rom_U :  component L2_wlo_218_L1_WEIbIp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


