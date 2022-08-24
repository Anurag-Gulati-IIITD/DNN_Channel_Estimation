-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbOq_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbOq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000101101001", 1 => "000001011111", 2 => "000001000010", 
    3 => "010000001000", 4 => "110000110011", 5 => "001110010000", 
    6 => "110101010001", 7 => "111111101111", 8 => "001000001010", 
    9 => "000001110101", 10 => "110100111001", 11 => "111000111011", 
    12 => "111010011011", 13 => "111100010000", 14 => "001010111011", 
    15 => "111100110010", 16 => "111010111000", 17 => "000000101100", 
    18 => "111001101011", 19 => "000110101110", 20 => "000010000001", 
    21 => "110001100001", 22 => "000101010000", 23 => "000101100110", 
    24 => "001000000001", 25 => "110101110011", 26 => "000100000110", 
    27 => "000111101110", 28 => "110100011110", 29 => "000000110101", 
    30 => "110101011110", 31 => "001111111111", 32 => "001000110011", 
    33 => "001001110010", 34 => "100101101011", 35 => "010100111111", 
    36 => "001011010110", 37 => "000100100011", 38 => "101110101000", 
    39 => "111100010100", 40 => "000010010100", 41 => "010011010010", 
    42 => "000110101110", 43 => "010101101100", 44 => "111110000111", 
    45 => "000001001101", 46 => "000010001001", 47 => "000011101011", 
    48 => "000001001010", 49 => "011011010101", 50 => "111011110001", 
    51 => "001101100101" );

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

entity L2_wlo_218_L1_WEIbOq is
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

architecture arch of L2_wlo_218_L1_WEIbOq is
    component L2_wlo_218_L1_WEIbOq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbOq_rom_U :  component L2_wlo_218_L1_WEIbOq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


