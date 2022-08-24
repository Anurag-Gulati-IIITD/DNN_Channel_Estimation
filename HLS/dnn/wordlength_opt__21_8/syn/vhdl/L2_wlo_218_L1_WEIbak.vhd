-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbak_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbak_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111110011100", 1 => "110000010111", 2 => "111000100010", 
    3 => "001110111111", 4 => "110100010011", 5 => "111010000001", 
    6 => "111010101101", 7 => "000100100111", 8 => "101101001100", 
    9 => "001111101110", 10 => "001010100101", 11 => "101100011000", 
    12 => "111101111011", 13 => "010010001110", 14 => "111101111001", 
    15 => "101100001000", 16 => "111010011001", 17 => "001110100011", 
    18 => "000010011111", 19 => "110100100110", 20 => "110111001011", 
    21 => "111110010011", 22 => "110101110100", 23 => "010011110010", 
    24 => "110111100010", 25 => "110110010011", 26 => "001100101101", 
    27 => "100000010101", 28 => "000000000011", 29 => "001011011100", 
    30 => "111011100011", 31 => "111001101101", 32 => "001011100000", 
    33 => "111111001000", 34 => "111000110000", 35 => "000011100100", 
    36 => "111011011000", 37 => "110011101000", 38 => "010011010010", 
    39 => "000000111111", 40 => "000001100001", 41 => "001011111110", 
    42 => "111101100000", 43 => "010110111110", 44 => "111101101001", 
    45 => "000110110110", 46 => "111000110101", 47 => "000001010100", 
    48 => "000000110111", 49 => "000111100101", 50 => "010110001000", 
    51 => "111110001001" );

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

entity L2_wlo_218_L1_WEIbak is
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

architecture arch of L2_wlo_218_L1_WEIbak is
    component L2_wlo_218_L1_WEIbak_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbak_rom_U :  component L2_wlo_218_L1_WEIbak_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


