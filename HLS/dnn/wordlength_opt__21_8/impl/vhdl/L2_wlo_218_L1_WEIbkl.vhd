-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbkl_rom is 
    generic(
             DWIDTH     : integer := 13; 
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


architecture rtl of L2_wlo_218_L1_WEIbkl_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111100101011", 1 => "0000010000111", 2 => "0010101010100", 
    3 => "0000101110011", 4 => "1101110100000", 5 => "0011111010101", 
    6 => "0001011001010", 7 => "1011100101101", 8 => "1111110111110", 
    9 => "0010110001010", 10 => "0000001001001", 11 => "1110111100101", 
    12 => "1110100101001", 13 => "0001010010000", 14 => "0000001101010", 
    15 => "1111000011101", 16 => "0000110111101", 17 => "1101100011001", 
    18 => "1111111000111", 19 => "1111011110001", 20 => "1110100000011", 
    21 => "1111101101101", 22 => "0010100011110", 23 => "1110111101010", 
    24 => "0000001100110", 25 => "0001001011110", 26 => "0010010010010", 
    27 => "0010101101010", 28 => "1111110001001", 29 => "1010100110110", 
    30 => "1111110101010", 31 => "0001110001011", 32 => "0001001000000", 
    33 => "1111100100010", 34 => "0000111000000", 35 => "1111010110000", 
    36 => "0001011111100", 37 => "1110001101010", 38 => "1110101000100", 
    39 => "1110001001101", 40 => "1111100011010", 41 => "0010100000011", 
    42 => "1100100010011", 43 => "1111101010001", 44 => "1111000111111", 
    45 => "0001100011011", 46 => "1111011011010", 47 => "1110101011010", 
    48 => "1110110010001", 49 => "1111101110011", 50 => "0001111111100", 
    51 => "0001100111101" );

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

entity L2_wlo_218_L1_WEIbkl is
    generic (
        DataWidth : INTEGER := 13;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIbkl is
    component L2_wlo_218_L1_WEIbkl_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbkl_rom_U :  component L2_wlo_218_L1_WEIbkl_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


