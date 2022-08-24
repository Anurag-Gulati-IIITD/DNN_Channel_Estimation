-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIKfY_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIKfY_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110000110010", 1 => "010001010100", 2 => "110110110001", 
    3 => "101101111101", 4 => "000111100101", 5 => "101011101110", 
    6 => "111001010000", 7 => "000110001100", 8 => "101100010000", 
    9 => "110001010000", 10 => "000000110001", 11 => "001000001111", 
    12 => "000110010000", 13 => "111111111000", 14 => "111011001110", 
    15 => "100111010100", 16 => "000000000001", 17 => "000010001000", 
    18 => "111111011111", 19 => "111001110000", 20 => "000010000110", 
    21 => "000100111001", 22 => "111101111110", 23 => "101011010001", 
    24 => "111001001011", 25 => "000000001000", 26 => "111110110000", 
    27 => "111011100000", 28 => "001110011001", 29 => "010111101001", 
    30 => "001011001000", 31 => "111000100001", 32 => "110111110000", 
    33 => "110110011110", 34 => "110100011110", 35 => "110000011110", 
    36 => "110110111000", 37 => "000100100011", 38 => "111000001000", 
    39 => "001001101001", 40 => "111010110001", 41 => "111001001001", 
    42 => "000100111001", 43 => "010011100110", 44 => "110111110111", 
    45 => "110010001000", 46 => "001000100000", 47 => "001010100110", 
    48 => "000000010010", 49 => "001010011100", 50 => "001010000101", 
    51 => "110101110010" );

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

entity L2_wlo_218_L1_WEIKfY is
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

architecture arch of L2_wlo_218_L1_WEIKfY is
    component L2_wlo_218_L1_WEIKfY_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIKfY_rom_U :  component L2_wlo_218_L1_WEIKfY_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


